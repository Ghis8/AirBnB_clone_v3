#!/usr/bin/python3

from fabric.api import *
import datetime
import os.path
from fabric.operations import put, run

env.hosts = ['34.138.80.184', '34.139.204.147']


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


def do_deploy(archive_path):
    """Upload files servers"""
    if os.path.exists(archive_path):
        try:
            file_name = archive_path.split('/')[-1][:-4]
            directory_s = "/data/web_static/releases/{}/".format(file_name)
            put(archive_path, "/tmp/")
            run("mkdir -p {}".format(directory_s))
            run("tar -xzf /tmp/{}.tgz -C {}".format(file_name, directory_s))
            run("rm -rf /tmp/{}.tgz".format(file_name))
            run("mv {}/web_static/* {}".format(directory_s, directory_s))
            run("rm -rf {}/web_static".format(directory_s))
            run("rm -rf /data/web_static/current")
            run("ln -s /data/web_static/releases/{}/ \
/data/web_static/current".format(file_name))
            return True
        except:
            return False
    return False


def deploy():
    """Create .tgz and load the file in servers"""
    file_name = do_pack()
    if file_name is None:
        return False
    path_complete = "versions/{}".format(file_name)
    return do_deploy(path_complete)
