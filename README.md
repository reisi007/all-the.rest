# all-the.rest

Minimal landing page that links to my subprojects (e.g. [countdown.all-the.rest](https://countdown.all-the.rest)).

Built with [Astro](https://astro.build), [Tailwind CSS](https://tailwindcss.com) and [daisyUI](https://daisyui.com). Static output, served by nginx.

## Development

```bash
pnpm install
pnpm dev        # dev server at http://localhost:4321
```

## Adding a project

Edit the `projects` array in `src/pages/index.astro`:

```js
const projects = [
  {
    title: "Countdown",
    description: "A simple countdown timer app.",
    href: "https://countdown.all-the.rest",
    badge: "Live",
  },
];
```

## Build & Deploy

```bash
pnpm build      # type-check + static build to dist/
pnpm sync       # rclone sync dist/ -> reisinger.pictures:/all-the.rest
```

Deployment runs as an nginx container on the shared `webnet` network, see
[`deployment/docker-compose.yml`](deployment/docker-compose.yml).
