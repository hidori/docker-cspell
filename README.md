# CSpell container image

This container image contains following components:

* CSpell: <https://github.com/streetsidesoftware/cspell>

## USAGE

```bash
docker pull hidori/cspell
```

## EXAMPLE

```bash
docker run -it -v $PWD:/workdir hidori/cspell lint /workdir
```
