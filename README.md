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
