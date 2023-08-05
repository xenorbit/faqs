FROM debian:11-slim

RUN apt-get update -q && \
    apt-get install -yq python3 python3-pip libyaml-0-2 build-essential  python3-dev libyaml-dev wget git && \
    pip3 install mkdocs mkdocs-material mkdocs-build-plantuml-plugin mkdocs-autolinks-plugin mkdocs-mermaid2-plugin mkdocs-drawio-file mkdocs-git-revision-date-localized-plugin mkdocs-git-committers-plugin-2 mkdocs-table-reader-plugin fontawesome_markdown

ENTRYPOINT ["mkdocs"]
