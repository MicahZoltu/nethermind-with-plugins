# Usage
```bash
docker container run --rm -it ghcr.io/micahzoltu/nethermind-with-plugins:1.10.67-6.1.0-3.0.2 \
  --Init.WebSocketsEnabled true \
  --JsonRpc.Enabled true \
  --JsonRpc.EnabledModules 'Eth,100' \
  --Multicall.Enabled true \
  --WebSocketPush.PendingEnabled true \
  --WebSocketPush.BlockEnabled true
```
