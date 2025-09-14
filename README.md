# 🦀 cargo-leptos + Trunk Docker Image

A lightweight Docker image combining [`cargo-leptos`](https://github.com/leptos-rs/cargo-leptos) and [`trunk`](https://trunkrs.dev/) for building and serving Leptos apps in CI/CD pipelines or containerized environments.

Published at: [secdrivor/cargo-leptos](https://hub.docker.com/r/secdrivor/cargo-leptos)

---

## 🚀 Features

- ✅ Based on `rust:latest`
- ✅ Includes `cargo-leptos` (locked install for stability)
- ✅ Includes `trunk` for frontend builds
- ✅ Ready for SSR and CSR workflows
- ✅ Ideal for GitHub Actions, Docker Compose, and local dev

---

## 📦 Usage

### 🔧 Build Leptos App

```bash
docker run --rm -v $(pwd):/app -w /app secdrivor/cargo-leptos cargo leptos build --release
```

### 🧪 Serve Frontend Locally

```bash
docker run --rm -p 3000:3000 -v $(pwd):/app -w /app secdrivor/cargo-leptos trunk serve
```

---

## 🛠️ GitHub Actions Example

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Build Leptos frontend
        run: |
          docker run --rm -v ${{ github.workspace }}:/app -w /app secdrivor/cargo-leptos cargo leptos build --release
```

---

## 🧱 Dockerfile Overview

```Dockerfile
FROM rust:latest

RUN apt-get update && apt-get install -y \
    libssl-dev pkg-config build-essential curl

RUN cargo install trunk
RUN cargo install --locked cargo-leptos

CMD ["trunk", "--help"]
```

---

## 🤝 Contributing

Feel free to open issues or submit PRs to improve this image—whether it's multi-arch support, version pinning, or additional tooling.

---

## 📜 License

MIT © [secdrivor](https://hub.docker.com/u/secdrivor)
