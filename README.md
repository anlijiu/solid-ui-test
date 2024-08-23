npm create astro@latest

cd square-sphere

npx astro add solid

npx astro add tailwind

vim  tsconfig.json file
``` json
{
  "compilerOptions": {
    // ...
    "baseUrl": ".",
    "paths": {
      "~/*": [
        "./src/*"
      ]
    }
    // ...
  }
}
```

mkdir src/styles

npx solidui-cli@latest init

be asked a few questions to configure ui.config.json:
```
Would you like to use TypeScript? (recommended) yes
Where is your global CSS file? src/styles/globals.css
Where is your tailwind.config.js located? tailwind.config.mjs
Configure the import alias for the src directory: ~/*
```

vim src/pages/index.astro
---
import "~/styles/globals.css"
---

tailwind config of astro:  vim astro.config.mjs
``` javascript
export default defineConfig({
  integrations: [
    tailwind({
      applyBaseStyles: false
    })
  ]
})
```

update tailwind.config.mjs
``` javascript
export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"]
}
```

add button component to project
``` shell
npx solidui-cli@latest add button
```


vim src/pages/index.astro
``` astro
---
import { Button } from "~/components/ui/button";
---
...
  <Button>Hello World</Button>
...
```
