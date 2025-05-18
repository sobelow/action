FROM elixir:1.18.3

COPY sobelow.sh /sobelow.sh

ENV DIR=GITHUB_WORKSPACE

WORKDIR ${DIR}

ENTRYPOINT ["/sobelow.sh"]