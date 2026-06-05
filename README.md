# SRDP c4 architecture

This repository contains the source code of the c4 architecture of SRDP. It uses [LikeC4](https://likec4.dev/) to describe the architecture as code, using the [standard template](https://github.com/likec4/template):

- LikeC4 sources ([`/src`](./src/)). Use `.c4` as the standard filename extension.
- Model validation ([`/test/validate-model.spec.ts`](./test/validate-model.spec.ts))
- Deploy to github pages ([`pages.yml`](./.github/workflows/pages.yml))
- Project configuration with custom generator ([`likec4.config.ts`](./likec4.config.ts))  


## How to use this respository

1. Clone this repository
2. Install [likec4 CLI](https://likec4.dev/tooling/cli/)
3. Use your preferred IDE with the likec4 extension:  
  - [VS Code](https://marketplace.visualstudio.com/items?itemName=likec4.likec4)
  - [Zed](https://github.com/Lenivvenil/zed-likec4)

Now you can edit likec4 sources, refactor, navigate and preview diagrams.

### CLI quickstart

You can install globally, locally and use scripts from `package.json`, or just via `npx`  
Check [documentation](https://likec4.dev/tooling/cli/)  

> LikeC4 requires Node.js version 20+  

To start local server with live reload (for development or quick preview)  
Inside the project folder:

```bash
npx likec4 start
```

Export to PNG:

```bash
npx likec4 export png -o png
```

Documentation: https://likec4.dev/docs/tools/cli/

### Custom generator

[`likec4.config.ts`](./likec4.config.ts) includes an example of custom generator that generates CSV file with relationships:

```bash
npm run generate:relationships-csv
```

### Model validation

[`test/validate-model.spec.ts`](./test/validate-model.spec.ts) includes an example of model validation tests:

```bash
npm run test
```

> Check [documentation](https://likec4.dev/guides/validate-your-model/) for more details

### Deployment

Deployment is the same as for any project built with [vite](https://vitejs.dev/).

1. Build static site (export to HTML, ready for deployment):

```bash
npx likec4 build -o ./dist
```
> Check `npx likec4 build --help` for options and examples

2. Upload `./dist` folder to your hosting

#### Github Pages

This template contains workflow to deploy to github pages on every push to `main` branch.  
Check [`.github/workflows/pages.yml`](./.github/workflows/pages.yml)
