# Backend Coding-Richtlinien (Django / Python)

Diese Richtlinien ergänzen die allgemeinen Clean Code Praktiken und konzentrieren sich auf spezifische Empfehlungen für die Backend-Entwicklung mit Django und Python im Sky L.A.D Projekt.

## Allgemeine Clean Code Praktiken

*   **Sprechende Namen:** Variablen, Funktionen, Klassen und Dateien sollten selbsterklärende Namen haben.
*   **Kleine Funktionen/Methoden:** Funktionen sollten jeweils nur eine Aufgabe erledigen.
*   **DRY (Don't Repeat Yourself):** Vermeidung von Code-Duplikation.
*   **KISS (Keep It Simple, Stupid):** Bevorzugung einfacher und direkter Lösungen.
*   **YAGNI (You Ain't Gonna Need It):** Implementiere nur das, was aktuell benötigt wird.
*   **Fehlerbehandlung:** Robuste Fehlerbehandlung und aussagekräftige Fehlermeldungen.
*   **Kommentare:** Kommentare sollten das *Warum* erklären, nicht das *Was*. Komplexere Logik oder nicht-triviale Entscheidungen sollten begründet werden.

## Spezifische Richtlinien für Backend (Django / Python)

*   **Linting:** flake8, Black (für Formatierung) und isort (für Import-Sortierung) für konsistente Code-Formatierung und Stilprüfungen (PEP 8).
*   **Django Best Practices:** Befolgung der Django Best Practices für die Strukturierung von Anwendungen, Modellierung und API-Design.
*   **Docstrings (Sphinx-Stil):** Verwendung von [Sphinx-Stil-Docstrings](https://sphinx-rtd-tutorial.readthedocs.io/en/latest/docstrings.html) für die Dokumentation von Modulen, Klassen, Methoden und Funktionen. Dies ermöglicht die Generierung einer umfassenden Projekt-Dokumentation mit Sphinx.

    **Beispiel Sphinx-Stil Docstring:**
    ```python
    def calculate_total_price(items: list, discount: float = 0.0) -> float:
        """
        Berechnet den Gesamtpreis einer Liste von Artikeln nach Abzug eines Rabatts.

        :param items: Eine Liste von Dictionaries, wobei jedes Dictionary 'price' und 'quantity' enthält.
        :type items: list[dict]
        :param discount: Der anzuwendende Rabatt als Dezimalwert (z.B. 0.1 für 10%).
        :type discount: float, optional
        :raises ValueError: Wenn ein Artikel keinen 'price' oder 'quantity' Schlüssel hat.
        :return: Der Gesamtpreis nach Rabatt.
        :rtype: float
        """
        total = sum(item['price'] * item['quantity'] for item in items)
        return total * (1 - discount)
    ```

Dies sind Richtlinien, die je nach spezifischen Projektanforderungen angepasst und erweitert werden können. Es wird empfohlen, diese Richtlinien aktiv zu pflegen.
