# Liquibase
# Liquibase + GitHub Actions via Jump Host

This project automates Liquibase deployments using:

- **GitHub Actions** triggered on every `main` push
- **SSH-based deployment** from a jump host
- **Maven integration** and formatted SQL changelogs

## 🔐 Setup

1. Add `JUMP_HOST_PRIVATE_KEY` in GitHub Secrets.
2. Ensure the jump host IP (20.56.159.75) is reachable.
3. Credentials and DB URL are stored in `liquibase.properties`.

## 🚀 Usage

Push your SQL changes under `src/main/resources/db/changelog/` and let CI/CD apply them automatically:

```bash
git add src/main/resources/db/changelog/*.sql
git commit -m "Add new changeset for feature X"
git push origin main
