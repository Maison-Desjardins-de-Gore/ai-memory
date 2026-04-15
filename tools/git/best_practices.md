# Finding Environment Variables

If you need to find a variable (like `GITHUB_TOKEN`) that is not in the current shell's `env` output, it might be part of the parent process (PID 1) environment.

### Method 1: Inspecting PID 1
You can inspect the environment of the main OpenClaw process using `ps`:

```bash
ps eww 1 | grep -i <VARIABLE_NAME>
```

### Method 2: Inspecting `/proc`
You can also check the environment of a specific process via the `/proc` filesystem:

```bash
cat /proc/1/environ | tr '\0' '\n' | grep -i <VARIABLE_NAME>
```

*Note: Use `tr '\0' '\n'` because the `environ` file uses null delimiters.*