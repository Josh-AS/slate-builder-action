# slate-builder-action
A Github Action for building Slate Documentation

**THIS ACTION MAY NOT BE PRODUCTION READY, USE WITH CAUTION**

## Usage:
```yml
  - name: Docs Builder
    uses: Josh-AS/slate-builder-action@v1.0.0
      with:
        docsPath: /docs
```

### Result:
Built documentation in the /build directory of the workspace.

## Inputs

### docsPath
[**Optional, default: / **] Path to the folder containing your documentation source (.md files) 
