#!/usr/bin/env python2.7

import socket


for port in __list_of_ports__:

    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect(('__destination_ip__', port))
        s.sendall('Hello, world')
        data = s.recv(1024)
        s.close()
        # print 'Received', repr(data)
        message = "Pass"

    except socket.error as e:

        # if "Connection refused" in e:
        # not firewall blocking, but no service running

        # if "No route to host" in e:
        # server firewall is blocking

        message = "Fail: {}".format(e)

    except Exception as e:
        message = "Fail: {}".format(e)

    else:
        pass  # message = "Fail"

    print "{} {}".format(port, message)