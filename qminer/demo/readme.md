# How to use qminer Docker image

Run docker container and map source into it:

```bash
docker run -it -v ABSOLUTE_PATH_ON_HOST:/home/dev bergloman/qminer:latest bash
```

Now `cd` into `/home/dev` and your files will be waiting there. You can run `make` to see how it works.

If you need to re-build qminer, you can run the following command

```bash
node-gyp configure build -C /var/qminer/qminer
```
