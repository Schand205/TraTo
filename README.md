# TraTo
Mobile App that lets you track calories and gym progress together with your friends


---

## Minimaler SwiftUI Starter (automatisch erzeugte Dateien)

Dieses Repository enthält eine minimale SwiftUI‑App als Ausgangspunkt. Die folgenden Dateien wurden hinzugefügt/ergänzt:

- `TraToApp.swift`
  - App-Entrypunkt mit `@main`. Definiert die Haupt-Scene (`WindowGroup`) und stellt das `ExampleModel` als `EnvironmentObject` bereit.

- `ContentView.swift`
  - Haupt-View der App. Zeigt einen einfachen Zähler und zwei Buttons zum Erhöhen/Verkleinern. Enthält auch `PreviewProvider` für Xcode Previews.

- `Models/ExampleModel.swift`
  - Einfache `ObservableObject`-Datenquelle mit `@Published`-Property `count` und Methoden `increment()`/`decrement()`.

- `Info.plist`
  - Minimal benötigte App-Metadaten (Bundle Identifier, Version, Gerätetypen). Wird vom System beim Build benötigt.

Nutzung:
1. Öffne `TraTo.xcworkspace` in Xcode.
2. Wähle ein iOS‑Simulator‑Gerät und baue/führe die App aus.

Hinweise:
- Dies ist eine minimalistische Struktur. Für ein echtes App‑Icon erstelle oder ersetze `Assets.xcassets` im Xcode‑Projekt.
- Passe `CFBundleIdentifier` in `Info.plist` an dein Team/Bundle ID an.
