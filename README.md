# markdown-format-benchmark

## Requires

- [Bun](https://bun.sh)
- [Node](https://nodejs.org/en) **OPTIONAL**

## Installation

1. Clone this repo
2. Run `bun install`

## Running

Run `./benchmark.sh`

## Results

See [results folder](./results/) or see below for last benchmark

```md
| Command                                                    |   Mean [ms] | Min [ms] | Max [ms] |     Relative |
| :--------------------------------------------------------- | ----------: | -------: | -------: | -----------: |
| `markdownlint-cli2 data/README.md`                         | 112.8 ± 1.2 |    111.9 |    114.1 | 11.97 ± 0.85 |
| `prettier -c data/README.md`                               | 101.1 ± 2.1 |     99.7 |    103.4 | 10.72 ± 0.78 |
| `./node_modules/dprint/bin.js check data/README.md`        |  48.9 ± 1.0 |     47.8 |     49.7 |  5.19 ± 0.38 |
| `./node_modules/dprint-rs-npm/dprint check data/README.md` |   9.4 ± 0.7 |      8.7 |      9.9 |         1.00 |
```
