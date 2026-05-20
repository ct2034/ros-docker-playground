# How to use this to build

## Preparation

```bash
docker compose build
```

## To actually build workspaces

e.g. rolling only

```bash
docker compose run --rm build_rolling
```

Some notes:

- This will also empty the build folder first <https://github.com/ct2034/ros-docker-playground/blob/main/diagnostics_all_distros/docker-compose.yml#L25-L26>)
- The build uses `-Werror`, but this is not what the CI does normally.
