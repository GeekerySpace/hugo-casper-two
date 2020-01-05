demo:
	hugo serve -D -s exampleSite --themesDir ../../

clean:
	-cd exampleSite && rm -r resources public
