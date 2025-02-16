## Dailey Missives

- Uses [Hugo theme Stack](https://github.com/CaiJimmy/hugo-theme-stack)

### Starting

- Use Docker to use hugo v0.111.0
- Recommend [klakegg/docker-hugo](https://github.com/klakegg/docker-hugo) since
  that's what we're using to deploy this in the GitHub action.

```
docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313 \
  klakegg/hugo:ext-alpine \
  server
```
