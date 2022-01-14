#!/usr/bin/python3

from io import StringIO
from sys import stdout
from fabric.api import *
import datetime
import os.path
from fabric.operations import put, run

env.hosts = ['34.138.80.184', '34.203.28.213']


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
            directory_s = "/data/web_static/releases/{}".format(file_name)
            # with cd('/tmp'):
            #     put(archive_path, '/tmp/',preserve_mode=False)
            put(archive_path, "/tmp/", use_sudo=True)
            # run("mkdir -p /tmp/{}.tgz".format(directory_s))
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


def do_clean(number=0):
    """Delete temp files"""
    if number in [0, 1]:
        local("ls versions/* | sort | head -n-1 | xargs rm")
        run('result=`ls /data/web_static/releases | sort -r | head -n-1`; for value in \
$result; do `rm -rf test/$value`; done')
    else:
        local("ls versions/* | sort | head -n-{} | xargs rm".format(number))
        run('result=`ls /data/web_static/releases | sort -r | head -n-{}`; for value in \
$result; do `rm -rf test/$value`; done'.format(number))
