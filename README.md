# odoo-dev

Company Odoo 20.0 development setup. Odoo core is not vendored here; it comes from the official `odoo:20.0` Docker image. Only custom code and Docker config live in this repo.

## Layout

- `custom-addons/` - the company's custom Odoo modules
- `Dockerfile` - builds an image from `odoo:20.0` with `custom-addons` baked in
- `docker-compose.yml` - Odoo service
- `docker-compose.db.yml` - PostgreSQL service (separate file)

## Run

```bash
docker network create odoo-network   # once
docker compose -f docker-compose.yml -f docker-compose.db.yml up --build -d
```

Open http://localhost:8069 and create a database.

## Build the image only

```bash
docker build -t odoo-dev:latest .
```

## Stop

```bash
docker compose -f docker-compose.yml -f docker-compose.db.yml down
```
