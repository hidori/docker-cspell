# CSpell container image

CSpell:
https://github.com/streetsidesoftware/cspell

## USAGE

```bash
docker pull hidori/cspell
```

## EXAMPLE

```bash
docker run -it -v "$PWD":/workdir hidori/cspell cspell lint /workdir
```
