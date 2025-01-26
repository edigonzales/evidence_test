---
title: Won't get fooled again
sidebar_position: 2
---

## Hallo Welt


```sql unique_gemeinden
select 
  gemeinde 
from 
  mytrino.steuerfuesse 
group by 
  1
order by 
  gemeinde
```

<Dropdown
    name=selected_gemeinde
    data={unique_gemeinden}
    value=gemeinde
    title="Wählen Sie eine Gemeinde"
    noDefault=true
/>

```sql query_steuerfuesse_filtered_by_gemeinden
select 
  * 
from 
  mytrino.steuerfuesse
where
  gemeinde = '${inputs.selected_gemeinde.value}'
order by
  jahr,gemeinde
```

<!--
<DataTable data={query_steuerfuesse_filtered_by_gemeinden} rows=10>
   <Column id=jahr title="Jahr" fmt='###0' />
   <Column id=gemeinde />
   <Column id=steuerfuss_in_prozent />
</DataTable>
-->
<LineChart 
    data={query_steuerfuesse_filtered_by_gemeinden}
    x=jahr
    y=steuerfuss_in_prozent 
    yAxisTitle="Steuerfuss pro Jahr"
    markers=true
    xFmt='###0'
    yMin=60
/>
