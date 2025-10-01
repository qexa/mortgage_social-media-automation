# Changelog
All notable changes to this project will be documented in this file.  
Follows [Semantic Versioning](https://semver.org/).

## [Unreleased]
### Added
- Basic queue placeholders and `.gitkeep` files to preserve empty dirs
- Initial docs for API & Deployment (to be expanded with endpoints)

### Changed
- Clarified `.env.example` keys and comments
- Minor README tweaks for clarity

---

## [1.0.0] - 2025-10-01
### Added
- Initial release
- **AI content generation** scaffolding (OpenAI client dependency & env vars)
- **Compliance checking** concept (docs + service placeholders)
- **Multi-platform publishing** concept (FB/IG/LinkedIn/TikTok env placeholders)
- **Admin dashboard** stub via Next.js landing page
- **Analytics** concept (docs placeholder)
- **Docker** setup: `docker-compose.yml`, backend/frontend Dockerfiles
- **CI**: GitHub Actions workflow (`.github/workflows/ci.yml`)
- **Issue templates**: bug report & feature request
- **Docs**: `docs/API.md`, `docs/DEPLOYMENT.md`
- **Scripts**: repo setup script (`scripts/setup.sh`)
- **Security deps**: `helmet`, `express-rate-limit`, `bcrypt`, `jsonwebtoken`

### Changed
- Standardized Node 18 engines across backend/frontend
- Enabled strict mode in Next.js config
- Adopted minimal ESLint config for Node & Next

### Fixed
- Ensured health endpoint returns timestamp for basic monitoring
- Aligned frontend default port and compose mapping

### Security
- Implemented basic rate limiting middleware (dependency present)
- Added JWT auth dependency for future protected routes
- Noted secret rotation & TLS guidance in deployment docs

### Docs
- README with quick start, architecture diagram, and links to docs
- Deployment guide with local & production Compose examples
- API doc skeleton including health endpoint

### CI/CD
- Node setup, install, and backend test job on push/PR to `main` & `develop`

### Known Issues
- No real DB migrations/seeds yet (placeholders only)
- Compliance engine and publishers are conceptual until services/routes are implemented
- HTTPS termination requires Nginx/Certbot production config (see docs)

### Upgrade Notes
- After pulling, run `scripts/setup.sh` to install deps and create `.env` files
- Set `NEXT_PUBLIC_API_URL` to match your reverse proxy path (e.g., `/api`)
- For production, create `.env.prod` and use `docker-compose.prod.yml` example in docs
