import argparse

parser = argparse.ArgumentParser(description='print out ht-condor setup for compute node')
parser.add_argument('hostname')
args = parser.parse_args()

config_d = """

CONDOR_HOST = patung.lancis.ecologia.unam.mx
UID_DOMAIN = lancis.ecologia.unam.mx
TRUST_UID_DOMAIN = TRUE
FILESYSTEM_DOMAIN = wuyafs
USE_NFS = True

BIND_ALL_INTERFACES = TRUE
DAEMON_LIST = STARTD, MASTER

ALLOW_WRITE = patung patung.lancis.ecologia.unam.mx 127.0.0.1 localhost *.lancis.ecologia.unam.mx 192.168.0.* {hostname}.local {hostname}

ALLOW_NEGOTIATOR = patung patung.lancis.ecologia.unam.mx 127.0.0.1 localhost *.lancis.ecologia.unam.mx 192.168.0.* {hostname}.local {hostname}

START = TRUE
SUSPEND = FALSE
CONTINUE = TRUE
PREEMPT = FALSE
KILL = FALSE

NUM_SLOTS = 1
NUM_SLOTS_TYPE_1 = 1
SLOT_TYPE_1 = cpus=100%
SLOT_TYPE_1_PARTITIONABLE = true

"""

print config_d.format(hostname=args.hostname)
