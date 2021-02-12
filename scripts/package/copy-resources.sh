#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${0}")/../.."
APP_ROOT=$(pwd)

function main() {
	cd ${APP_ROOT}
	mkdir -p dist
	if [ "${IS_BUILD-}" ];
	then
		cp resources/index-new.html dist/index.html
	else
		cp resources/index-new.html dist/index.html
	fi
	cp resources/favicon.ico dist
	cp resources/manifest.json dist
	cp resources/product.json dist

	echo "copy resources done!"
}

main "$@"
