#!/usr/bin/env bash
# Pemakaian: ./deploy.sh https://github.com/<username>/<nama-repo>.git
set -e
REMOTE="${1:?Sertakan URL repo GitHub, mis. ./deploy.sh https://github.com/user/repo.git}"
[ -d .git ] || git init
git add .
git commit -m "Deploy dashboard monitoring pelanggan" || true
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "$REMOTE"
git push -u origin main
echo "Selesai. Aktifkan Settings > Pages > Source: GitHub Actions."
