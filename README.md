# Sky Backend (Django / DRF)

Dies ist das Backend-Repository für das Sky L.A.D Projekt, entwickelt mit Django und Django REST Framework.

## Projektübersicht

Dieses Repository stellt die RESTful API für das Frontend und andere Verbraucher bereit. Es verwaltet die Geschäftslogik, Datenpersistenz (PostgreSQL) und Authentifizierung.

## Kerntechnologien

*   **Framework:** Django, Django REST Framework (DRF)
*   **Sprache:** Python 3.12+
*   **Datenbank:** PostgreSQL
*   **Webserver:** Gunicorn
*   **Paketmanager:** pip

## Entwicklung

### Installation

```bash
# Im sky-backend Verzeichnis
pip install -r requirements.txt
```

### Datenbank-Migrationen

```bash
# Führt ausstehende Datenbank-Migrationen aus
python manage.py migrate
```

### Lokale Entwicklung

```bash
# Startet den Django-Entwicklungsserver
python manage.py runserver
```

Die API ist dann unter `http://localhost:8000/` erreichbar.

### Tests

*   **Unit & API Tests:**
    ```bash
    pytest -q
    ```

## CI/CD

Siehe [`sky-backend/.github/workflows/ci.yml`](.github/workflows/ci.yml) für Details zum Build-, Test- und Deployment-Workflow.

## Verwandte Repositories

*   [sky-frontend](https://github.com/yourgithub/sky-frontend) (Bitte URL anpassen)
*   [sky-infra](https://github.com/yourgithub/sky-infra) (Bitte URL anpassen)
