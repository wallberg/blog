current_dir = $(shell pwd)

docker-build:
	docker build --no-cache -t blog .

build:
	docker run -it --rm --volume="$(current_dir):/srv/jekyll" blog jekyll build

serve:
	docker run -it --rm -p 4000:4000 --volume="$(current_dir):/srv/jekyll" blog jekyll serve --watch --drafts
