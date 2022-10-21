# Ben Wallberg's blog and wiki

<https://bwallberg.neocities.org/>

## Building the blog using Docker

```bash
# Build a Docker image containing jekyll and all required gems
> make docker-build
```

## Running the blog using Docker

```bash
# Build the blog to the _site directory
> make build
# Serve the blog at http://localhost:4000/ with --watch and --drafts mode
> make serve
```
