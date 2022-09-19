# Hardhat 2.11 docker issues sample

Just run `yarn test:docker`

It will fail in one of the following ways:

Either it will exit early and not run the test:

```
test_1  | yarn run v1.22.19
test_1  | $ hardhat test
test_1  | Downloading compiler 0.8.17
test_1  | Done in 1.19s.
hardhat-211-compiler-bug_test_1 exited with code 0
```

Or it will fail with an EPIPE error:

```
test_1  | yarn run v1.22.19
test_1  | $ hardhat test
test_1  | Error: write EPIPE
test_1  |     at afterWriteDispatched (internal/stream_base_commons.js:156:25)
test_1  |     at writeGeneric (internal/stream_base_commons.js:147:3)
test_1  |     at Socket._writeGeneric (net.js:798:11)
test_1  |     at Socket._write (net.js:810:8)
test_1  |     at writeOrBuffer (internal/streams/writable.js:358:12)
test_1  |     at Socket.Writable.write (internal/streams/writable.js:303:10)
test_1  |     at output (/app/node_modules/hardhat/src/internal/solidity/compiler/index.ts:82:24)
test_1  |     at new Promise (<anonymous>)
test_1  |     at NativeCompiler.compile (/app/node_modules/hardhat/src/internal/solidity/compiler/index.ts:66:34)
test_1  |     at SimpleTaskDefinition.action (/app/node_modules/hardhat/src/builtin-tasks/compile.ts:639:37)
test_1  | error Command failed with exit code 1.
test_1  | info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
hardhat-211-compiler-bug_test_1 exited with code 1
```
