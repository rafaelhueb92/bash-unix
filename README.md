# Bash Automation Scripts

These scripts cover a range of practical scenarios including AWS CLI integration, system monitoring, log parsing, user management, and more.

---

## Repository Structure

Each script is organized into its own folder with a descriptive name. Inside each folder, you will find:

- `exec.sh` — The executable Bash script implementing the task.
- `README.md` — A detailed explanation of what the script does, how to use it, and any prerequisites.

Example folder structure:

```
list-all-s3-buckets/
  ├── exec.sh
  └── README.md
for-simple/
  ├── exec.sh
backup-logs/
  ├── exec.sh
  └── README.md
...
```

---

## Included Scripts Overview

- **list-all-s3-buckets**
  Lists all S3 buckets in your AWS account and summarizes the number of objects and total size per bucket.

- **backup-logs**
  Archives `.log` files from `/var/log` into timestamped backups and cleans up old backups.

- **restart-nginx**
  Checks if Nginx is running, restarts it if down, and logs the event.

- **user-creation**
  Creates a new Linux user with a randomly generated password.

- **for-simple**
  A simple script to study for statement

---

## How to Use

1. Clone this repository:

   ```bash
   git clone <repository-url>
   cd <repository-name>
   ```

2. Navigate to the desired script folder:

   ```bash
   cd list-all-s3-buckets
   ```

3. Make sure the script is executable:

   ```bash
   chmod +x exec.sh
   ```

4. Run the script:

   ```bash
   ./exec.sh
   ```

---

## Prerequisites

- Bash shell (Linux/macOS environment recommended).
- AWS CLI configured with appropriate permissions for AWS-related scripts.
- Optional dependencies like `jq` for JSON parsing (used in some scripts).
- `openssl` for password generation in user creation script.

---

## Notes & Best Practices

- **Security**: Avoid logging sensitive information such as passwords in production environments.
- **Customization**: Feel free to modify scripts to fit your environment and use cases.
- **Automation**: These scripts can be integrated into cron jobs or CI/CD pipelines for automated operations.

---

## Contribution

Contributions and improvements are welcome! Please open issues or submit pull requests with enhancements or new scripts.

---

## License

This repository is provided under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Happy scripting! 🚀
