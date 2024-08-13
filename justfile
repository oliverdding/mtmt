# list all available recipes
default:
    @just --list --justfile {{ justfile() }}

# start mtphotos
run:
    mkdir -p ./data/mtphotos/{config,upload}
    mkdir -p ./data/{postgres,redis}
    chown -R 1000:100 ./data
    docker compose up -d
