minio for openshift
===

Storage with S3 compatible API https://minio.io/

### Environment Variables

- `MINIO_ACCESS_KEY`: set the access key, defaults to "MINIO_ACCESS_KEY"
- `MINIO_SECRET_KEY`: set the secret key, defaults to "MINIO_SECRET_KEY"

```
NAME:
  Minio - Cloud Storage Server.

DESCRIPTION:
  Minio is an Amazon S3 compatible object storage server. Use it to store photos, videos, VMs, containers, log files, or any blob of data as objects.

USAGE:
  minio [FLAGS] COMMAND [ARGS...]

COMMANDS:
  server   Start object storage server.
  version  Print version.
  update   Check for a new software update.
  gateway  Start object storage gateway server.
  
FLAGS:
  --config-dir value, -C value  Path to configuration directory. (default: "/root/.minio")
  --quiet                       Disable startup information.
  --help, -h                    Show help.
  
VERSION:
  2017-03-16T21:50:32Z
```

