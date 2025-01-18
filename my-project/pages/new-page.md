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
