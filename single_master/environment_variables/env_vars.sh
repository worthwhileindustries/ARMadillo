# Set env vars

# Pi creds
export  Pi_USERNAME="Pi OS USERNAME HERE"   # Pi default OS username is "pi"
export  Pi_PASSWORD="Pi OS PASSWORD HERE"   # Pi default OS password is "raspberry"

# Network parameters
export  MASTER01_HOSTNAME=<k8s_MASTER_01 HOSTNAME HERE>
export  WORKER01_HOSTNAME=<k8s_WORKER_01 HOSTNAME HERE>
export  WORKER02_HOSTNAME=<k8s_WORKER_02 HOSTNAME HERE>
export  WORKER03_HOSTNAME=<k8s_WORKER_03 HOSTNAME HERE>
export  WORKER04_HOSTNAME=<k8s_WORKER_04 HOSTNAME HERE>
export  WORKER05_HOSTNAME=<k8s_WORKER_05 HOSTNAME HERE>
export  MASTER01_IP=<k8s_MASTER_01 IP HERE>
export  WORKER01_IP=<k8s_WORKER_01 IP HERE>
export  WORKER02_IP=<k8s_WORKER_02 IP HERE>
export  WORKER03_IP=<k8s_WORKER_03 IP HERE>
export  WORKER04_IP=<k8s_WORKER_04 IP HERE>
export  WORKER05_IP=<k8s_WORKER_05 IP HERE>
export  DNS=<DNS SERVER IP HERE>

# Docker version
# Follow kubernetes release notes for the current validated docker versions @ https://kubernetes.io/docs/setup/release/notes/ 
export VERSION=18.09 

# NFS parameters
export NFS_SERVER=<Pi IP HERE>                          # The Pi connected to the external disk
export SERVER_NFS_MOUNT=<MOUNTPOINT HERE>               # The NFS mount point on the Pi acting as NFS server. Example "/mnt/extstorage/k8s_nfs"
export CLIENT_NFS_PV=<PV CLIENT DIRECTORY HERE>         # This directory will act as the persistent volume mapped to the NFS mount on the NFS server. Example "$HOME/k8s_pv"
export Pi_SUBNET=<Pi SUBNET HERE>                       # Can be changed to specific IP(s). For the ease of use, allow the entire Pi's subnet. Example: 172.16.1.0/24

# rclone parameters
export rclone_CONFIG_NAME = "rclone CONFIG NAME HERE"                               # rclone configuration name. For example "armadillo_azure_config"                                             
export AZURE_BLOB_ACCOUNT = "AZURE STORAGE ACCOUNT NAME HERE"                       # Target Azure storage account name. For example "armadillodata"
export AZURE_BLOB_CONTAINER = "AZURE STORAGE ACCOUNT BLOB CONTAINER NAME HERE"      # Target Azure storage account blob container name. For example "armadillo_k8s_data"
export AZURE_BLOB_KEY = "AZURE STORAGE ACCOUNT KEY HERE"                            # Target Azure storage account key

# No need to change unless you have more then 3 masters and 2 workers
export MASTERS_HOSTS="$MASTER01_HOSTNAME $MASTER02_HOSTNAME $MASTER03_HOSTNAME"
export MASTERS_IPS="$MASTER01_IP $MASTER02_IP $MASTER03_IP"
export WORKERS_HOSTS="$WORKER01_HOSTNAME $WORKER02_HOSTNAME"
export WORKERS_IPS="$WORKER01_IP $WORKER02_IP"
