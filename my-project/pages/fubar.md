---
title: Baba O'Riley
lightLogo: /Logo.png
sidebar_position: 3
---

<!--
```my_queryXXXXX
SELECT
    JSON_OBJECT(
        'type', 'FeatureCollection',
        'features', json_group_array(
            JSON_OBJECT(
                'type', 'Feature',
                'geometry', geometrie_geojson::json,
                'properties', JSON_OBJECT(
                    'gemeindename', gemeindename,
                    'bfsnr', bfs_gemeindenummer,
                    'steuerfuss_in_prozent', steuerfuss_in_prozent
                )
            )
        )
    ) AS my_data
FROM 
    mytrino.mygeojson
```
-->

```sql my_query
SELECT
    *
FROM 
    mytrino.steuerfuesse
WHERE 
    jahr = 2022
```

<AreaMap 
    data={my_query} 
    areaCol=gemeinde
    geoJsonUrl='/kanton_solothurn.geojson'
    geoId=gemeindename
    value=steuerfuss_in_prozent
    legend=false
    showTooltip=false
    title='Steuerfüsse (natürliche Personen)'
    attribution='Kanton Solothurn'
/>
