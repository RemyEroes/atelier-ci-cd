# atelier-ci-cd

Rémy Eroes


## Explication de la pipeline

La pipeline se déclenche sur un `push` ou une `pull_request` sur la branche `main`.

### Étapes
1. Récupération du code (checkout du dépôt).  
2. Vérification de la présence des fichiers suivants :
   - `Dockerfile`
   - `index.html`
   - `style.css`
   - `texture.jpg`
   - `nginx.conf`
3. Validation de la configuration Nginx :
   - ex. `nginx -t -c ./nginx.conf`
4. Build image Docker.
5. Lance container Docker.
6. Attendre 5 secondes.
7. Tester la réponse HTTP
8. Tester l'endpoint /health
9. Login to GHCR
10. Nom du repo en minuscules
11. Build l'image avec un tag basé sur le commit SHA
12. Publicatiino de l'image sur Github Container Registry
