# Upstream

| | |
| --- | --- |
| Project | secDevLabs (Globo.com) |
| Repository | https://github.com/globocom/secDevLabs |
| App | `owasp-top10-2021-apps/a3/comment-killer` |
| Version | master (secDevLabs has no releases) |
| Commit | 10be438496e928c66567749f0aaf0bb976052bc9 |
| Licence | BSD-3-Clause |

The app folder [`owasp-top10-2021-apps/a3/comment-killer`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/comment-killer) of that commit is vendored unchanged, without its Git history,
split so that each part sits in the build folder of the machine that uses it:

| Upstream path (in the app folder) | Here |
| --- | --- |
| `app/` | `build/app/app/` |
| `api/` | `build/api/app/` |
| `everything else (README, Makefile, deployments, images)` | `app/` |

Each `build/<machine>/Dockerfile` says in its header comment how it differs from upstream:

- `build/app/`: upstream's `deployments/app.Dockerfile` with `CI=true`, so the development server keeps running without the terminal upstream's compose file attaches (`stdin_open: true`).
- `build/api/`: upstream's `deployments/api.Dockerfile` with the base image pinned to `golang:1.23` (upstream takes the latest), the modules downloaded and the program compiled at build time (upstream downloads them at first start), and the compose command as `CMD`.
- The page calls the API at `http://localhost:10017`, so the API keeps upstream's published port.

To update, replace the vendored folders with a newer secDevLabs commit, then change this file.
