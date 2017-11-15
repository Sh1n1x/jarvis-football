<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Donne la date et l'heure du prochain match de votre équipe favorite.
Donne le score du dernier match.

## Configuration
Il faut mettre le numéro de votre équipe dans le fichier config.sh les données proviennent de l'API http://api.football-data.org/ je n'ai pas trouvé d'autre moyen que de checker manuellement en faisant chaque numéro pour trouver mon équipe.

Exemple : 
http://api.football-data.org/v1/teams/100 (100 = Roma)
http://api.football-data.org/v1/teams/98 (98 = Milan)

## Evolution du plugins

Actuellement il y a un bug avec le dernier match (compliqué à le récupérer, il récupère un des dernier match au pif je ne sais pas pourquoi. Ce bug est connu et en cours de résolution).

## Usage
```
moi: quel est le prochain match
jarvis: Je regarde...
jarvis: Prochain match SSC Napoli contre AC Milan le 18/11 à 20 heures 45

moi: quel était le dernier match
jarvis: Je regarde...
jarvis: Dernier match AC Milan contre Juventus Turin score 0 à 2
```

## Author
[Shinix](https://www.shinix.me)
