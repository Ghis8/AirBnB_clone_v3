#!/usr/bin/python3
"""Deploy static information"""

from fabric.api import *
import datetime


def do_pack():
    """Create a file compress with information static"""
    name_file = "web_static_"
    date = datetime.datetime.now()
    split_v = str(date).split(' ')
    first_v = split_v[0].split('-')
    second_v = split_v[1].split(':')
    name_file = name_file + first_v[0] + first_v[1] + first_v[2]
    name_file = name_file + second_v[0] + second_v[1] + str(second_v[2][:2])
    name_file = name_file + ".tgz"
    local("mkdir -p versions")
    result = local("tar -cvzf versions/{} web_static".format(name_file))
    if result is None:
        return None
    else:
        return name_file
