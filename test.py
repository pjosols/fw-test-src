#!/usr/bin/env python2.7

import requests


for port in __list_of_ports__:

    try:
        r = requests.get('http://__destination_ip__:{}'.format(port), timeout=10)
        message = "Success"

        if r.status_code != 200:
            message = "Fail: {}".format(r.status_code)

    except Exception as e:

        message = "Fail: {}".format(e)

    print "{} {}".format(port, message)
