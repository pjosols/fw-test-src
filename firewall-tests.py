import subprocess
from os import environ

# nc -zvv $DEST_IP $TCP_PORTS
SRC_IP = environ.get("SRC_IP")
DEST_IP = environ.get("DEST_IP")
TCP_PORTS = environ.get("TCP_PORTS").split(" ") if environ.get("TCP_PORTS") else []  # string like "100 200" becomes [100, 200]
UDP_PORTS = environ.get("UDP_PORTS").split(" ") if environ.get("UDP_PORTS") else []


results = list()

for port in TCP_PORTS:

    out = subprocess.Popen(["nc", "-nzv", DEST_IP, str(port)],
                           stdout=subprocess.PIPE,
                           stderr=subprocess.STDOUT)
    stdout, stderr = out.communicate()

    open_ = True if "open" in stdout or "bytes received" in stdout else False

    results.append(
        "{},{},{},{},{},{}".format(
            SRC_IP, DEST_IP, port, "TCP", open_, stdout
        )
    )

for port in UDP_PORTS:

    out = subprocess.Popen(["nc", "-nzvu", DEST_IP, str(port)],
                           stdout=subprocess.PIPE,
                           stderr=subprocess.STDOUT)
    stdout, stderr = out.communicate()

    open_ = True if "open" in stdout or "bytes received" in stdout else False

    results.append(
        "{},{},{},{},{},{}".format(
            SRC_IP, DEST_IP, port, "UDP", open_, stdout
        )
    )

print results


