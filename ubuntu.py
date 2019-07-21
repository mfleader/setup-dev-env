import subprocess as sbp


pkgs = [
    # 'r-base-dev',
]


def r_edge():
    ubuntu_v = 'disco-cran35/'
    sbp.run(['apt-key', 'adv', '--keyserver', 'keyserver.ubuntu.com', '--recv-keys', 'E298A3A825C0D65DFD57CBB651716619E084DAB9'])
    sbp.run(['add-apt-repository', 'deb', 'https://cloud.r-project.org/bin/ubuntu', ubuntu_v])
    sbp.run(['apt', 'install', '-y', 'r-base-dev'])


def install(pkgs):
    install_cmd = ['apt', 'install', '-y']
    sbp.run([*install_cmd, *pkgs])


def main():
    install(pkgs)


if __name__ == '__main__':
    main()
