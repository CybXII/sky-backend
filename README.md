# Sky Backend (Django / DRF)

Dies ist das Backend-Repository für das Sky L.A.D Projekt, soll als Grundgerüst für zukünftige Django und Django REST Framework Applikations dienen..

## Projektübersicht

Dieses Repository stellt die RESTful API für das Frontend und andere Verbraucher bereit. Es verwaltet die Geschäftslogik, Datenpersistenz (PostgreSQL) und Authentifizierung.

## Kerntechnologien

*   **Framework:** Django, Django REST Framework (DRF)
*   **Sprache:** Python 3.12+
*   **Datenbank:** PostgreSQL
*   **Webserver:** Gunicorn
*   **Paketmanager:** pip

## Lokale Entwicklung

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

### Starten des Entwicklungsservers

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

Details zum Build-, Test- und Deployment-Workflow finden Sie in der [`sky-backend/.github/workflows/ci.yml`](.github/workflows/ci.yml).
