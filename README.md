# markdown-lint-benchmark

## Requires

- [Bun](https://bun.sh)
- [Node](https://nodejs.org/en) **OPTIONAL**

## Installation

1. Clone this repo
2. Run `bun install`

## Running

Run `./benchmark.sh`

## Results

See [results folder](./results) or see below for last benchmark

```md
| Command                            |    Mean [ms] | Min [ms] | Max [ms] |    Relative |
| :--------------------------------- | -----------: | -------: | -------: | ----------: |
| `markdownlint-cli2 data/README.md` | 157.8 ± 65.7 |    117.8 |    233.6 | 1.45 ± 0.61 |
| `prettier -c data/README.md`       |  108.6 ± 4.0 |    105.4 |    113.0 |        1.00 |
| `dprint check data/README.md`      |  197.7 ± 7.5 |    193.4 |    206.4 | 1.82 ± 0.10 |
```
