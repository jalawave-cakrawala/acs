all:
	rm -rf node_modules
	rm -rf .next
	npm install
	npm run build
	docker build --no-cache -t jalawave4/acs .
	docker push jalawave4/acs
	docker image rm jalawave4/acs