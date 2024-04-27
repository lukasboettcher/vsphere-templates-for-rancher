/*
    DESCRIPTION:
    VMware vSphere variables used for all builds.
    - Variables are use by the source blocks.
*/

// vSphere Credentials
vsphere_endpoint            = "192.168.122.71"
vsphere_username            = "administrator@vsphere.local"
vsphere_insecure_connection = true

// vSphere Settings
vsphere_datacenter = "DC"
vsphere_cluster    = "cluster"
vsphere_datastore  = "datastore1"
vsphere_network    = "VM Network"
vsphere_folder     = "rancher-vms"