cp /etc/vmware/wcp/wcpsvc.yaml /etc/vmware/wcp/wcpsvc.yaml-org
sed -i 's/minmasters: 3/minmasters: 1/g' /etc/vmware/wcp/wcpsvc.yaml
sed -i 's/maxmasters: 3/maxmasters: 1/g' /etc/vmware/wcp/wcpsvc.yaml
cat -n /etc/vmware/wcp/wcpsvc.yaml
service-control --restart wcp
