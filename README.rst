vastNFS builder
================

This is a vastNFS build tool.

pre-requisites
------------------

I assume podman is installed on builder.

Install the package.::

    $ sudo dnf -y install podman

Build
------

Execute run.sh to build vastNFS.::

    $ ./run.sh --build <vastnfs_verion>
    ex) ./run.sh --build 4.0.32

