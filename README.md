# Makeflow PC

Makeflow for PC.

### Development Guide

#### Scripts

- Compile and build in development mode：`npm run build:dev`
- Compile and build in production mode：`npm run build`
- Run app in development mode (needs build first): `npm start`
- Package without generating installer (needs build first): `npm run pack`
- Package and generate installer (needs build first): `npm run dist`

If you are in China, you may want to use those instead:

```bash
npm run pack:china
npm run dist:china
```

#### Release

Run:

```
npm run release -- <version>
```

For example:

```
npm run release -- 1.0.0
```

This will trigger the CI to build this version of installers for both Windows and macOS. Installer file can be found at release page as drafts.
