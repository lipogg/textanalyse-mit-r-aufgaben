# Übungszettel zum Seminar "Textanalyse mit R"

Sammlung von Übungszetteln für mein Seminar "Textanalyse mit R für die Geisteswissenschaften" an der FU Berlin. 

## Inhalt

- `learnr.tutorials/`: Übungszettel im Format interaktiver R *learnr*-Tutorials, gebündelt als R-Paket. Die Tutorials können installiert und interaktiv im RStudio oder im Browser ausgeführt werden (Installationsanleitung s.u.).
- `rmarkdown/`: Übungszettel im R Markdown-Format, die in RStudio (über den Button "Knit") in PDF-Dateien umgewandelt werden können.  

## Installation 

1. RStudio starten und im unteren linken Fenster (Tab "Console") eingeben: 

    - `install.packages("remotes")` 
    - `remotes::install_github("lipogg/textanalyse-mit-r-aufgaben", subdir = "learnr.tutorials")`

2. Nach der Installation sollte im Fenster oben rechts ein neuer Tab "Tutorial" erscheinen. Dort sollten jetzt Tutorials mit Namen nach dem Schema "Übungszettel Nr. X" sichtbar sein. Ein Tutorial kann mit Klick auf "Start Tutorial" gestartet werden. Falls der Tab "Tutorial" nicht erscheint oder ein Problem auftritt, kann ein Übungszettel auch manuell gestartet werden, indem `learnr::run_tutorial("uebungsblatt_2", "learnr.tutorials")` im Tab "Console" eingegeben wird. Falls es bei der Bearbeitung im RStudio ein Problem geben sollte, können Tutorials alternativ im Browser geöffnet werden mit `rmarkdown::run("uebungsblatt_2.Rmd", shiny_args = list(launch.browser = TRUE))`. 

