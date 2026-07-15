import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  site: "https://all-the.rest",
  vite: {
    plugins: [tailwindcss()],
  },
});
