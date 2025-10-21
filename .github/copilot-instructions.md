<!-- .github/copilot-instructions.md
Kurz, handlungsorientierte Anleitung für KI-Coding-Agenten, die in diesem Repo arbeiten.
--> 

# Copilot-Anweisungen für dieses Repository

Kurz: Dieses Repository enthält ein sehr kleines, statisches Webprojekt. Ziel dieser Datei ist, AI-Coding-Agenten schnell produktiv zu machen, ohne Annahmen zu treffen.

1) Big picture
- Art: Einfaches statisches Website-Repository. Die Website-Quellen liegen im Verzeichnis `root/` (z. B. `root/index.html`).
- Erwartetes Verhalten: Änderungen betreffen überwiegend statische HTML/CSS/JS-Dateien. Kein Build-Tool, kein Package-Manager oder Backend-Code entdeckt.

2) Wichtige Dateien/Orte
- `root/index.html` — Einstiegspunkt der Seite (aktuell leer).
- `README.md` — Minimaler Repo-Header. Keine zusätzlichen Anweisungen.

3) Lokales Testen / Entwickeln
- Zum schnellen Testen eine einfache HTTP-Server-Instanz im `root/`-Verzeichnis starten, z. B. `python -m http.server 8000` (oder ein Live-Server in der IDE). Dies ist die primäre, zuverlässige Art die Seite zu prüfen.
- Es gibt keine vorhandenen Scripts, CI-Dateien oder Linter-Configs im Repo — vermeide Annahmen über vorhandene Build-Schritte.

4) Projektkonventionen beobachtbar in der Codebasis
- Website-Inhalte gehören nach `root/`. Wenn neue Seiten oder Assets (CSS/JS/Bilder) hinzugefügt werden, lege sie unter `root/` in passenden Unterverzeichnissen ab (z. B. `root/css/`, `root/js/`, `root/assets/`).
- Kleinteilige Commits bevorzugt: Da das Repo sehr klein ist, ist es hilfreich, Änderungen in einzelne, gut beschriebene Commits aufzuteilen (z. B. „Add basic HTML skeleton to index.html“).

5) Beispiele / konkrete Änderungen, die typisch sind
- Wenn `index.html` erstellt/erweitert wird, sorge für eine minimale, validierbare HTML-Struktur:

  <!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>supreme-octo-funicular</title>
  </head>
  <body>
    <!-- Inhalte hier -->
  </body>
  </html>

- Füge bei Änderungen zu `index.html` immer eine kurze Notiz im `README.md` nur dann hinzu, wenn sich die Projektstruktur ändert (z. B. neue Ordner mit Assets oder ein Build-Schritt eingeführt wird).

6) Grenzen und Annahmen
- Es existieren aktuell keine Tests, CI-Konfiguration, Paketdefinitionen (z. B. package.json) oder serverseitigen Komponenten im Repository. Unterlasse automatische Injektionen von Build- oder Test-Infrastrukturen ohne Rücksprache.
- Vermeide Änderungen, die eine Abhängigkeit auf externe Dienste einführen (z. B. CDNs, APIs), ohne das Team zu fragen.

7) Review- und PR-Empfehlungen
- PR-Beschreibung sollte enthalten: kurzes Ziel, betroffene Dateien, Manual-Testschritte (z. B. "Open http://localhost:8000 after running python -m http.server in /root").
- Behalte PRs klein und nachvollziehbar (ein Feature / Fix pro PR).

8) Do / Don't für die KI
- Do: Erzeuge minimal valide HTML/CSS/JS, referenziere Dateien in `root/` und dokumentiere lokale Test-Schritte in der PR-Beschreibung.
- Don't: Füge keine CI/Build-Tools oder Abhängigkeiten hinzu, es sei denn, der Maintainer fordert das ausdrücklich.

9) Offene Fragen, die ein Agent stellen sollte
- Soll die Seite als GitHub Pages gehostet werden (und wenn ja: welches Verzeichnis als Seiten-Root verwenden)?
- Gibt es eine bevorzugte Sprache/Design-Vorgaben für die Seite (z. B. deutsch/englisch, Styling-Framework)?

Wenn du detailliertere Informationen brauchst oder konkrete Erwartungen (z. B. gewünschte HTML-Struktur oder Hosting), frag nach — ich passe die Anleitung an.

---

10) GitHub Pages & Custom Domain (konkret)
 - Deployment-Strategy: Wir empfehlen, die statische Website unter `docs/` abzulegen und in den GitHub Pages-Einstellungen `main branch /docs folder` zu wählen. Alternativ kann ein `gh-pages`-Branch oder eine Pages-Action verwendet werden, aber `docs/` ist die einfachste Option für Anfänger.
 - CNAME: Lege eine Datei `docs/CNAME` mit deinem Domain-Namen an (z. B. `example.com`). Ich habe eine `docs/CNAME`-Vorlage im Repo hinzugefügt — ersetze Platzhalter durch deine Domain.
 - DNS: Richte eine A-Record oder ALIAS/ANAME für die Apex-Domain auf die GitHub-Pages IPs und/oder eine CNAME für Subdomains. Schritt-für-Schritt-Anweisungen sind in `README.md`.

11) Styling-Framework Empfehlung
 - Vorschlag: Bulma (leichtgewichtig, CSS-only, modern, gut geeignet für schlichtes Design). Ich habe ein simples Beispiel-Layout mit Bulma via CDN unter `docs/index.html` angelegt. Wenn du eine noch minimalere Alternative willst, nenne ich dir gerne "Skeleton" oder "Milligram".

12) Was heißt "Assets per CDN referenzieren"?
 - Erklärung: Statt CSS/JS-Dateien in dieses Repo zu kopieren, referenzieren wir eine externe URL (Content Delivery Network) wie `https://cdn.jsdelivr.net/...` in `<link>` oder `<script>`. Vorteil: schnelle Einrichtung, keine lokalen Assets. Nachteil: externe Verfügbarkeit/Privacy und weniger Kontrolle. Für Anfänger und kleine statische Seiten ist CDN-Referenzierung praktisch.

13) Update-Reminder (automatisch/Manuell)
 - Empfehlung: Wenn du `docs/index.html` änderst, aktualisiere die "Last updated"-Zeile in `README.md`. Ich habe ein kleines Hilfs-Script `scripts/update-readme-timestamp.sh` hinzugefügt, das diese Zeile aktualisiert (ausführen lokal: `./scripts/update-readme-timestamp.sh`).

14) Sicheres Vorgehen
 - Keine automatischen CI-Pipelines oder Actions hinzugefügt — das spart Komplexität. Wenn du möchtest, kann ich später eine automatische GitHub Action zum Deployen auf `gh-pages` oder für einfache Builds hinzufügen.
