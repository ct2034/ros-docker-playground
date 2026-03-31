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

Maybe clean the build folder for reproducibility

```bash
sudo rm -rf build_*/*
```
