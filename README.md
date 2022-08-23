[![License BSD-2-Clause](https://img.shields.io/badge/License-BSD--2--Clause-blue.svg)](https://opensource.org/licenses/BSD-2-Clause)
[![License MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

# `restic`
Welcome to `restic` 🎉

`restic` is a tiny container to serve a `restic` mount via SMB to circumvent OSXFUSE issues.


## Example
```sh
# The container currently supports five environment variables
export SMB_PASS="<samba share password>"
export RESTIC_REPOSITORY="<restic repository location>"
export RESTIC_PASSWORD="<restic repository encryption password>"
export AWS_ACCESS_KEY_ID="<S3 secret key identifier>"
export AWS_SECRET_ACCESS_KEY="<S3 secret key value>"

# Start the container
docker compose up 
```

Now the mounted restic share should be available at `smb://restic:$SMB_PASS@localhost:1445/`.
