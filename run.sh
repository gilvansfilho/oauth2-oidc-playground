podman run -d --name sso -p 8282:8080 -e SSO_ADMIN_USERNAME=admin -e SSO_ADMIN_PASSWORD=admin registry.redhat.io/rh-sso-7/sso76-openshift-rhel8:latest

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    podman run -d --rm --name httpd -p 8080:8080 -v ${PWD}/html:/var/www/html:Z registry.access.redhat.com/ubi8/httpd-24:latest
elif [[ "$OSTYPE" == "darwin"* ]]; then
    podman run -d --rm --name httpd -p 8080:8080 -v ${PWD}/html:/var/www/html registry.access.redhat.com/ubi8/httpd-24:latest
else
     podman run -d --rm --name httpd -p 8080:8080 -v ${PWD}/html:/var/www/html registry.access.redhat.com/ubi8/httpd-24:latest
fi