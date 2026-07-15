c4-install:
    pnpm install

c4-dev:
    pnpm run dev

c4-build:
    bunx likec4@latest build --base "/architecture/c4" --output _site/c4

quarto-preview:
    quarto preview arc42/
