fedora-rdiff-backup
===================

Fedora container image with rdiff-backup installed.

Example
-------

Restoring a backup when rdiff-backup is installed locally but not on
the remote server:

```
rdiff-backup \
    -r now \
    --force \
    --remote-schema 'ssh -C %s podman run -i --rm --privileged -v /:/host:rw quay.io/mugful/fedora-rdiff-backup rdiff-backup --server' \
    local-rdiff-backup-dir \
    root@remote-server.example.org::/host/remote-dir-to-restore-to
```
