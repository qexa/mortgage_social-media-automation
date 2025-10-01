# Deployment Guide

This guide covers local development, staging, and production deployment using Docker Compose, Nginx, and Let’s Encrypt. The stack includes:

- **Frontend:** Next.js (Node 18)
- **API:** Node/Express
- **DB:** PostgreSQL 15
- **Queue/Cache:** Redis 7

---

## 1) Prerequisites

- Docker & Docker Compose
- A domain name (for production), e.g. `app.yourdomain.com`
- Ports `80` and `443` open on the server
- API keys placed in `backend/.env` and `frontend/.env` (see examples)

---

## 2) Quick Start (Local)

```bash
# from repo root
cp backend/.env.example backend/.env
cp frontend/.env.example frontend/.env

docker-compose up -d
# Frontend: http://localhost:3001
# Backend:  http://localhost:3000/health
