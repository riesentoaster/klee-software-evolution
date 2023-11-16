## Interesting Klee Options

### Environment

- `-posix-runtime` – enables symbolic environment
- `-sym-arg <N>` - Replace by a symbolic argument with length N.
- `-sym-args <MIN> <MAX> <N>` - Replace by at least MIN arguments and at most MAX arguments, each with maximum length N.
- `-sym-files <NUM> <N>` - Make NUM symbolic files (‘A’, ‘B’, ‘C’, etc.), each with size N (excluding stdin)
- `-sym-stdin <N>` - Make stdin symbolic with size N.

### [Solver](https://klee.github.io/docs/solver-chain/)

- `-use-branch-cache` – Enables caching previous queries
- `-use-cex-cache` – Enables caching counterexamples
- `-use-independent-solver` – Splits queries into disjoint sets of independent constraints and solves them independently

## TODOs/Ideas

- [Search Heuristics](https://klee.github.io/docs/options/#search-heuristics): Are any significantly more effective than the default (which was used in the original paper)?
- [Memory Management](https://klee.github.io/docs/options/#memory-management): What are the pros and cons of the new system? Is it enabled by default?