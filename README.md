# Liquibase
# Liquibase + GitHub Actions via Jump Host

This project automates Liquibase deployments using:

- **GitHub Actions** triggered on every `main` push or manual run
- **SSH-based deployment** from a jump host
- **Maven integration** and formatted SQL changelogs
- ** Liquibase Insttaltion **

## 🔐 Setup

1. Add `JUMP_HOST_PRIVATE_KEY` in GitHub Secrets.
2. Ensure the jump host IP (98.71.128.218) is reachable.
3. Credentials and DB URL are stored in `liquibase.properties`.

## 🚀 Usage

Push your SQL changes under `src/main/resources/db/changelog/` and let CI/CD apply them automatically:

```bash
git add src/main/resources/db/changelog/*.xml
git commit -m "Add new changeset for feature X"
git push origin main

