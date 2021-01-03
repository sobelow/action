FROM elixir:1.11.2

COPY sobelow.sh /sobelow.sh

ENTRYPOINT ["/sobelow.sh"]