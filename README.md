# Housing Disrepair Smoke Test

This repository runs smoke tests for the [Housing Disrepair Project](https://github.com/ministryofjustice/fb-housing-disrepair-prototype)


## Environment variables

| ENV            | Value          | Description
| :------------- | :------------- | :---------------------------------------|
| SHOW_BROWSER   | true / false   | Shows browser navigation during testing |
| HOST_URL       | https://{USERNAME}:{PASSWORD}@example.url | Staging URL with basic authentication |


## Run smoke tests

```
HOST_URL=example.url bundle exec cucumber
```
