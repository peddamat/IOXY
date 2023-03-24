cd ioxy
CGO_CFLAGS="-g -O2 -Wno-return-local-addr" go build -ldflags="-s -w" .