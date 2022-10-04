# Affiche les images installés 
docker image

# Supprimer une image
docker rmi <nom_image ou id_image>  

# Forcer la suppression une image 
docker rmi -f <nom_image ou id_image> 

# Supprime TOUTES les images disponibles sur la machine
docker rmi $(docker images -q)

# Rechercher une image sur le hub docker
docker search <nom_image>

# Afficher que les images officielles
docker search <nom_image> --filter "is-official=true"

# Installer une image
docker pull  <nom_image>  

# Installe une image avec une version précise
docker pull  ubuntu:16.04  

# Installe la version récente d'une image
docker pull  ubuntu:latest  

# Exécute une image
docker run [OPTIONS] <Image_Name ou ID> 

# Inspecte un conteneur
docker inspect <container_id>  

# Stop un conteneur
docker stop <container_id>

# Remove un conteneur
docker rm <container_id> 

# Pour exécuter une commande dans un conteneur.
docker exec [OPTIONS] <container_id ou container_name> command

# Renomme un container
docker rename <Container> <new_name>

## Quelques options

#Allouer un terminal tty (terminal virtuel)
-t  

# Garder un STDIN ouvert (l'entrée standard, plus précisément l'entrée clavier)
-i  

# Exécuter le conteneur en arrière-plan
-d

# Exposer un ou plusieurs ports (mapping)
-p

# Donner un nom au container
--name : 
# Exposer un port ou une plage de ports (on demande au firewall du conteneur de nous ouvrir un port ou une plage de port)
--expose
# Mapper un port déjà exposé, plus simplement ça permet de faire une redirection de port
-p || –publish
# Pour connecter un conteneur au moment de la création

--nework : 