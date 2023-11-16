# TD MEP 2

## Partie 1 : build local

### Prérequis

- openjdk 17
- gradle 8.3

### Lancement

Aller dans covid-api et lancer la commande : `./gradlew build`

Ensuite, lancer le jar avec la commande : `java -jar build/libs/covid-api-0.0.1-SNAPSHOT.jar`

Pour tester l'api, aller sur http://localhost:8080/api/center/getAll

## Partie 2 : déploiement dans un conteneur local

Pour construire l'image et lancer le conteneur, lancer la commande : `docker compose up --build`

Comme précédemment, pour tester, aller sur http://localhost:8080/api/center/getAll

## Partie 3 : push de l'image sur dockerhub avec Jenkins

### Prérequis

Vous devez avoir installé docker dans Jenkins depuis Dashboard > Global Tool Configuration > Docker et lui donner l'ID `docker`

Vous devez également avoir créé un compte sur dockerhub et avoir créé un repository ainsi que généré un token d'accès et le stocker dans Jenkins dans Dashboard > Manage Jenkins > Credentials > System > Global credentials sous l'ID `docker-hub`

### Lancement

Créez un nouveau job de type pipeline et copiez le contenu du fichier Jenkinsfile dans le champ Pipeline