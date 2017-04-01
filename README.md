# Symlink Into Volume Doesn't Work

Steps to reproduce:

1. run create.sh
2. run `kubectl get pods | grep foo-proxy`
3. run `kubectl exec -it [foo-proxy-pod] /bin/bash`
4. run `ls /etc/secrets`

Expected: `htpasswd` should exist in `/etc/secrets`

Actual: `htpasswd` does not exist in `/etc/secrets`

Furthermore:

5. run `ln -s /etc/auth/htpasswd /etc/secrets/htpasswd`
6. verify that `htpasswd` was succesfully created and retained

Furthermore:

7. verify that `/var/log/secrets.txt` contains the text "secret"

Conclusion:

The symlink file is being successfully created, otherwise the cat command into /var/log wouldn't work.  Something must be happening during container initialization lifecycle which wipes the symlink out after it has been created.
