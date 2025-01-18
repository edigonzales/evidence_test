# evidence_test

```
npx degit evidence-dev/template my-project
cd my-project
npm install
npm run sources
npm run dev
```

```
cd ~/sources/sogeo.services.ng/assets/data/house-at-the-lake-02
docker compose up
```
Achtung: Config-Files sind unter `/Users/stefan/tmp/trino`.

Beim Erstellen einer neuen Data Source ist es bisschen schräg, dass man Name unt Type eintippen muss und dann Enter drücken, damit das Formular mit den Verbindungsparameter erscheint!?

- Hide/show queries
- Deployment to prod
- Automatismen: new-page.md wird zu New Page im Toc.
- Attributname werden auch beautified (_ entfernt. Grossschreibung.)
- Formatting: excel style...
- Logo?

```
╰─ npm run sources                                                                                                                                                                                                                      ─╯


> my-evidence-project@0.0.1 sources
> evidence sources

⠋ Loading plugins & sources(node:54146) [DEP0040] DeprecationWarning: The `punycode` module is deprecated. Please use a userland alternative instead.
(Use `node --trace-deprecation ...` to show where the warning was created)
✔ Loading plugins & sources
-----
  [Processing] mytrino
  steuerfuesse ✔ Finished, wrote 2461 rows.
-----
  [Processing] needful_things
  my_query ✔ Finished, wrote 10000 rows.
  needful_things ⚠ No results returned.
  orders ✔ Finished, wrote 10000 rows.
-----
[INFO]:    Evaluated sources, saving manifest
[INFO]:    ✅ Done!
╭─    ~/sources/evidence_test/my-project/sources/mytrino  on   main !1 ?2                                                                                                                    ✔  took 10s   base   at 19:17:08  ─╮
```