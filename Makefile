current_dir = $(shell pwd)

docker-build:
	docker build --no-cache -t blog --platform linux/arm64 .

build:
	docker run -it --rm --volume="$(current_dir):/srv/jekyll" --platform linux/arm64 blog jekyll build

serve:
	docker run -it --rm -p 4000:4000 --volume="$(current_dir):/srv/jekyll" --platform linux/arm64 blog jekyll serve --watch --drafts

site:
	python3 -m http.server --directory _site

push-dry-run:
	neocities push --dry-run _site

push:
	neocities push _site
