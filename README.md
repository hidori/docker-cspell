# CSpell container image

This container image contains following components:

* CSpell: <https://github.com/streetsidesoftware/cspell>

## USAGE

```bash
docker pull hidori/cspell:latest
```

## EXAMPLE

```bash
docker run --rm -v $PWD:$PWD -w $PWD hidori/cspell .
```
