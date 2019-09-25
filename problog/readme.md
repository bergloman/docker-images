# How to use Problog image

Run docker container and optionally map source into it:

```bash
docker run -it bergloman/problog:latest bash
docker run -it -v ABSOLUTE_PATH_ON_HOST:/home/dev bergloman/problog:latest bash
```

Basic usage:

Prepare your probabilistic Prolog program - store it to a file named `test.pl`:

```
0.5::heads1.
0.6::heads2.
someHeads :- heads1.
someHeads :- heads2.

query(someHeads).
```

Execute the program:

```bash
problog test.pl
```

The result should be:

```
someHeads:      0.8
```