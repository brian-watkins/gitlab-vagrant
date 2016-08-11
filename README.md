### Gitlab CE on Vagrant

Simple Vagrantfile for running Gitlab CE

```
$ vagrant up
```

Then visit: `http://localhost:9090`

The machine is setup to forward port 22 to localhost:2222. You can use access gitlab over ssh
with something like:

```
git remote set-url origin ssh://git@localhost:2222/path/to/repo.git
```

Make sure to create an ssh key, add the identity on your local machine with `ssh-add` and register the key with gitlab. 
