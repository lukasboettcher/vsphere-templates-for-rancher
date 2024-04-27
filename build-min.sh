INPUT_PATH="builds/windows/server/2022/"
### Build Microsoft Windows Server 2022 Standard Templates for VMware vSphere. ###
echo "Building Microsoft Windows Server 2022 Standard Templates for VMware vSphere..."
### Initialize HashiCorp Packer and required plugins. ###
echo "Initializing HashiCorp Packer and required plugins..."
packer init "$INPUT_PATH"
### Start the Build. ###
echo "Starting the build...."
packer build -force \
    --only vsphere-iso.windows-server-standard-core \
    -var-file="config/vsphere.pkrvars.hcl" \
    -var-file="config/sensitive.pkrvars.hcl" \
    -var-file="config/common.pkrvars.hcl" \
    "$INPUT_PATH"