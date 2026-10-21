# Unit2-02-Swift-FileIO

Reads `input.txt` one line at a time with `enumerateLines`. Each line is
converted to an `Int`;
invalid or blank lines write `Error: invalid input` to `output.txt` and are
skipped. The sum of all valid integers is written after the error messages.

Run from this directory:

```sh
swift FileIO.swift
```

The sample's valid values total `12 + (-5) + 23 + (-10) + 0 = 20`, so the
output has two invalid-input messages followed by `20`.