# secDevLabs Comment-killer

[secDevLabs](https://github.com/globocom/secDevLabs)' [`owasp-top10-2021-apps/a3/comment-killer`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/comment-killer) app, by Globo.com and the
secDevLabs contributors: a React page backed by a small Go API, whose comments are a stored cross-site scripting (Injection) flaw. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, built from
the vendored app folder (see [UPSTREAM.md](UPSTREAM.md)).

| Machine | Service |
| --- | --- |
| app | the React page (development server) on port 3000, published on 10007 |
| api | the comments API on port 10017 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:10007/. The page calls the API at http://localhost:10017/comments. The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the app's
[README](https://github.com/globocom/secDevLabs/blob/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/comment-killer/README.md), with the attack narrative and the secDevLabs walkthrough.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

BSD-3-Clause, as secDevLabs ([LICENSE](LICENSE)). The third-party software inside the images keeps
its own licence. This application is deliberately vulnerable: keep it isolated.
