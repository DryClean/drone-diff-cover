```yaml
pipeline:
  # 2. Run Diff-cover
  run-diff-cover:
    image: dryclean/drone-diff-cover:0.0.1
    compare_branch: development
    cobertura_file: 'reports/cobertura-coverage.xml'
    output: 'reports/diff-cover.txt'
```
