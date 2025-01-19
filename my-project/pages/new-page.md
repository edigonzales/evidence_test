---
title: Nach Bahrenfeld im Bus
sidebar_position: 1
---

## Nach Bahrenfeld im Bus


### Steuerfuesse

```my_query
select * from mytrino.steuerfuesse
```
<DataTable data={my_query} />

<DataTable data={my_query} rows=150>
   <Column id=jahr title="Jahr" fmt='###0' />
   <Column id=gemeinde />
   <Column id=steuerfuss_in_prozent />
</DataTable>


```sql unique_years
select 
  jahr 
from 
  mytrino.steuerfuesse 
group by 
  1
order by 
  jahr
```

<Dropdown
    name=selected_year
    data={unique_years}
    value=jahr
    title="Select a year"
    noDefault=true
/>

```my_query_filtered_by_year
select 
  * 
from 
  mytrino.steuerfuesse
where
  jahr = '${inputs.selected_year.value}'
order by
  jahr,gemeinde
```

<DataTable data={my_query_filtered_by_year} rows=all>
   <Column id=jahr title="Jahr" fmt='###0' />
   <Column id=gemeinde />
   <Column id=steuerfuss_in_prozent />
</DataTable>