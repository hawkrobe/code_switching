# Room Assignment Problem

This is an experiment powered by
[Empirica](https://empirica.ly/) (here is a basic
[tutorial](https://www.youtube.com/watch?v=K2YhEZey_58&list=PLPQelvUwyVgiawBDk3Sp74QMfL8RPgORW&index=1)).

## Testing

To develop locally, 

1. make sure you [have meteor installed](https://www.meteor.com/install), 
2. clone the repo, and run `meteor npm install` to get the dependencies
3. launch locally with `meteor --settings local.json` (the default admin password is `password` -- change this in `local.json`.
4. go to `http://localhost:3000/admin` in your browser
5. click the 'import' button and select `config.yaml` 
6. click 'new batch' to start a game and go to `localhost:3000` in a new tab to join as a user

## Deployment

When ready to collect data, we can deploy publicly on Meteor Galaxy:

```
DEPLOY_HOSTNAME=galaxy.meteor.com meteor deploy codeswitching.meteorapp.com --settings settings.json
```
