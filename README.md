# PostgreSQL on Podman

Setup file structure 

```bash
.
├── .env
├── compose.yaml
└── imports/
    └── sample.csv
```


## Command to run 

```bash
# to run 4_query_csv.sql
podman exec -i postgres psql -U kokchun -d dba_db < 4_query_csv.sql | less -RS

# to run interactive postgres
podman exec -it postgres psql -U kokchun -d dba_db
```

