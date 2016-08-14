### Gitlab CE on Vagrant

Vagrantfile for running Gitlab CE.

```
$ bundle && berks install && berks vendor
$ GITLAB_HOST=your_ip_address vagrant up
```

Then visit: `http://localhost:9090`

You'll be asked for a password; this is for the `root` user.

Access gitlab via SSH at GITLAB_HOST:2222 or HTTP at GITLAB_HOST:9090. Just use the url shown in the Gitlab web interface to clone repositories over HTTP or SSH. 

Sending mail should (hopefully) work, so long as you are not on a network that blocks it. 
