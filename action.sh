branch=main
git clone -b $branch https://github.com/AstroUB/Astro-Session-Bot /root/AstroUB
cp asb/.env /root/AstroUB/.env
cd /root/AstroUB
docker build . --rm --force-rm --compress --pull --file Dockerfile -t asb
docker run --privileged --env-file .env --rm -i asb
