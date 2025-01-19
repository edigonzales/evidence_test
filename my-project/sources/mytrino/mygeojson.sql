SELECT 
	CAST(gemeindename AS varchar) AS gemeindename,
	bfs_gemeindenummer,
	hg.geometrie_geojson,
	steuerfuss_in_prozent
FROM 
	pg_pub.agi_hoheitsgrenzen_pub_v1.v_hoheitsgrenzen_gemeindegrenze_4326 AS hg
	LEFT JOIN iceberg.agem_steuerfuesse.natuerliche_personen AS np
	ON np.gemeinde = hg.gemeindename
WHERE 
	np.jahr = 2022
