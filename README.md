# TD MEP 2

## Partie 1 : build local

### Prérequis

- openjdk 17
- gradle 8.3

### Lancement

Aller dans covid-api et lancer la commande : `./gradlew build`

Ensuite, lancer le jar avec la commande : `java -jar build/libs/covid-api-0.0.1-SNAPSHOT.jar`

Pour tester l'api, aller sur http://localhost:8080/api/center/getAll

Le résultat devrait être :

```json
[
    {
        "id":1,
        "nom":"Hopital Central",
        "adresse":"12 rue de la Paix",
        "codePostal":"57000",
        "ville":"Metz"
    },
    {
        "id":2,
        "nom":"Centre hospitalier",
        "adresse":"21 rue de la Republique",
        "codePostal":"54000",
        "ville":"Nancy"
    }
]
```
## Partie 2 : déploiement dans un conteneur local

Pour construire l'image et lancer le conteneur, lancer la commande : `docker compose up --build`

Comme précédemment, pour tester, aller sur http://localhost:8080/api/center/getAll

## Partie 3 : push de l'image sur dockerhub avec Jenkins

### Prérequis

Vous devez avoir installé docker dans Jenkins depuis Dashboard > Manage Jenkins > Global Tool Configuration > Docker et lui donner l'ID `docker`. Vous pouvez choisir l'option d'installation automatique depuis docker.com

Vous devez également installer le plugin docker dans Jenkins depuis Dashboard > Manage Jenkins > Manage Plugins > Available > Docker

Vous devez également avoir créé un compte sur dockerhub et avoir créé un repository ainsi que généré un token d'accès et le stocker dans Jenkins dans Dashboard > Manage Jenkins > Credentials > System > Global credentials sous l'ID `docker-hub`

### Lancement

Créez un nouveau job de type pipeline et copiez le contenu du fichier Jenkinsfile dans le champ Pipeline

Vous devrez également changer le nom du repository et l'username dans le Jenkinsfile pour qu'ils correspondent à vos informations 

Lien de mon dockerhub : https://hub.docker.com/r/nifr3d/mep2

# Auteurs

## TD de mise en production 2 :

- [Frédéric WAGNER]
  
## Back-end :

- [Frédéric WAGNER]
- [Thibault REY]