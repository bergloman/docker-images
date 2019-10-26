# How to use qminer Docker image with node.js

Run docker container and map sources (e.g. this directory) into it:

```bash
docker run -it -v ABSOLUTE_PATH_ON_HOST:/home/dev bergloman/qminer:latest bash
```

Now `cd` into `/home/dev` and your files will be waiting there.

```bash
cd /home/dev
node app.js
```

If you need to re-build qminer, you can run the following command

```bash
node-gyp configure build -C /var/qminer/qminer
```
