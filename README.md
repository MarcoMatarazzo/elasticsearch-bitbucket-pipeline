## What is this?

This is an image you can use as elasticsearch service in Bitbucket Pipelines, as it's currently impossible to pass `discovery.type=single-node` as an environment variable in services definition. 

It does nothing more than adding that setting to the original image.

## Usage
```
  [...]

  services:
    elasticsearch:
      image: elementalstorm/elasticsearch-bitbucket-pipeline:7.9.0

```

You may want to raise available memory:

```
  [...]

  services:
    elasticsearch:
      image: elementalstorm/elasticsearch-bitbucket-pipeline:7.9.0
      variables:
        ES_JAVA_OPTS: '-Xms512m -Xmx512m'
    docker:
      memory: 2048

```
