CHART=qor

all: lint

install:
	helm install ${CHART} . -f values.yaml

lint:
	helm lint

dryrun:
	helm install --dry-run --debug ${CHART} . -f values.yaml 

manifest:
	helm template --debug ${CHART} ./

installed:
	echo "what templates are installed on the server"
	helm get manifest ${CHART} 

uninstall:
	helm delete ${CHART} 

update:
	helm upgrade ${CHART} ./ -f values.yaml

redeploy: uninstall install
