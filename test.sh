#!/bin/sh
set -eu

test -f app/index.html
grep -q "My First CI/CD Pipeline" app/index.html
grep -q "Version: 1.0" app/index.html

echo "All tests passed!"
