# Docker container for minio/certgen

Certificate generator utility for minio. See [minio/certgen](https://github.com/minio/certgen) for more information.

## Usage

```sh
docker run -it --rm -v $(pwd)/certs:/certs lsegal/certgen -host "example.com,other.example.com"
```

(use `-v %CWD%/certs:/certs` on Windows)
