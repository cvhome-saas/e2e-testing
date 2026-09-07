# The gates CI runs, in order. `step "<name>" <command...>` stops at the first failure. Keep identical to CI.
step "diff is clean of whitespace errors" git diff --check
step "install" npm ci --no-audit --no-fund
step "playwright specs parse" npx playwright test --list
