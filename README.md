# supreme-octo-funicular
supremerepo

Kurz: kleines statisches Website-Repo. Die produktive Site liegt im Ordner `docs/` und ist für GitHub Pages vorbereitet.

Lokales Testen
- Im `docs/`-Verzeichnis kannst du einen schnellen HTTP-Server starten zum Testen:

```bash
cd docs
python -m http.server 8000
# dann im Browser öffnen: http://localhost:8000
```

GitHub Pages (eigene Domain)
1. Stelle sicher, dass deine Seite unter `docs/` liegt (es gibt bereits eine Beispielseite in `docs/index.html`).
2. In den GitHub-Repository-Einstellungen: Pages -> Branch: `main`, Folder: `/docs` wählen.
3. Für eine eigene Domain: ersetze den Inhalt von `docs/CNAME` mit deiner Domain (z. B. `example.com`).
4. Richte DNS-Einträge bei deinem Domain-Provider ein:
   - Für eine Apex-Domain (`example.com`): lege A-Records auf die GitHub-Pages IPs an.
   - Für eine Subdomain (`www.example.com`): lege einen CNAME auf `yourusername.github.io`.

CDN / Styling
- Die Beispielseite nutzt Bulma über ein CDN (siehe `docs/index.html`). "Assets per CDN referenzieren" bedeutet, CSS/JS extern per URL einzubinden (schnell, keine lokalen Dateien notwendig).

Update-Reminder
- Nutze das Script `scripts/update-readme-timestamp.sh`, um die "Last updated"-Zeile in dieser README zu aktualisieren, nachdem du `docs/index.html` geändert hast.

Wenn du Hilfe beim Einrichten der DNS-Records oder beim Veröffentlichen auf GitHub Pages brauchst, sag mir deine Domain und ich leite dich Schritt-für-Schritt durch (Anfänger-freundlich).
# supreme-octo-funicular
supremerepo

Last updated: 2025-10-21 19:29 UTC
