# PSL image

**PSL** stands for probabilistic soft-logic and is a machine learning framework for developing probabilistic models. Official site for the project is [http://psl.linqs.org/](http://psl.linqs.org/)

## How to use PSL image

Run docker container and optionally map source into it:

```bash
docker run -it bergloman/psl:latest bash
docker run -it -v ABSOLUTE_PATH_ON_HOST:/home/dev bergloman/psl:latest bash
```

## Example

To test the demo start the container and load demo subdirectory into it:

```bash
docker run -it -v $PWD:/home/dev/demo bergloman/psl:latest bash
```

Once inside the container

```bash
cd /home/dev/demo/demo
bash run.sh
```
