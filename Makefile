open: CV
	xdg-open out/CV.pdf

CV: create_out_dir
	docker run -ti --rm --volume $(HOME)/.cache/docker-tectonic:/home/tectonic/.cache:z --volume `pwd`:/tectonic:z fabianhauser/tectonic --outdir out CV.tex 

create_out_dir:
	mkdir -p out

clean:
	rm -rf out