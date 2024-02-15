ARG NETHERMIND_VERSION
# ARG PUSH_VERSION
ARG MULTICALL_VERSION
# FROM ghcr.io/zoltu/nethermind-plugin-websocket-push:${PUSH_VERSION} as websocket-push
FROM ghcr.io/zoltu/nethermind-plugin-multicall:${MULTICALL_VERSION} as multicall
FROM nethermind/nethermind:${NETHERMIND_VERSION}
# COPY --from=websocket-push /nethermind/plugins/ /nethermind/plugins/
COPY --from=multicall /nethermind/plugins/ /nethermind/plugins/
