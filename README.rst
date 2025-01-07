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

The rpm files will be in output directory.::

    $ ls output
    vastnfs-4.0.31-kernel_4.18.0_553.33.1.el8_10.x86_64.rpm
    vastnfs-debuginfo-4.0.31-kernel_4.18.0_553.33.1.el8_10.x86_64.rpm
    vastnfs-debugsource-4.0.31-kernel_4.18.0_553.33.1.el8_10.x86_64.rpm


