# Utiliser une image de base Python
FROM python:3.12-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copier tout le code du projet dans le conteneur
COPY . .

# Exposer le port sur lequel Flask écoute
EXPOSE 5000

# Spécifier la commande pour démarrer l'application Flask
CMD ["flask", "run", "--host=0.0.0.0"]
