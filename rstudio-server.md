# RStudio-server (ecocast.bigelow.org:8787)


### Need to restart?

```
sudo systemctl start rstudio-server
sudo systemctl stop rstudio-server
sudo systemctl restart rstudio-server
```

### Server pro docs 

I'm not sure if we have Server Pro but here are the [docs](https://docs.rstudio.com/ide/server-pro/index.html)

### ~/.studio

The `~/.studio` directory holds each user's default settings and a cache for saving stuff between sessions.  Sometimes it gets corrupted, and yiu may get weird errors like "Error occured during transmission" while trying to log in.  In that case remove the offending directory `rm -rf ~.rstudio` and try again.  Be advised that all of your settings under `Tools > Global Options...` will be reset to defaults - sorry about that! 


### Hidden files that can break ecocast rstudio

.config/rstudio
.local/share/rstudio

Rename them:

```
mv .config/rstudio .config/rstudio-date
mv .local/share/rstudio .local/share/rstudio-date

```