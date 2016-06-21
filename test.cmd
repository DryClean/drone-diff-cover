git clone https://github.com/ZombieHippie/fantastic-repository
cd fantastic-repository
git checkout feature/test-feature

PLUGIN_COVERAGE=reports/coverage/Phantom*/cobertura-coverage.xml

echo $PLUGIN_COVERAGE

docker run --rm                    \
	 -e PLUGIN_COVERAGE=$PLUGIN_COVERAGE   \
	 -e PLUGIN_OUTPUT=diff-cover.txt         \
	 -e PLUGIN_COMPARE_BRANCH=origin/develop \
	 -v $(pwd):$(pwd)                        \
	 -w $(pwd)                               \
	 dryclean/drone-diff-cover

cd ..

