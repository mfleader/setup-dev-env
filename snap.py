import subprocess as sp


jb_pro = [
    'pycharm-professional',
    'intellij-idea-ultimate',
    'webstorm',
]

jb_cmt = [
    'pycharm-community'
]

edge_pkgs = [
    'node'
]

classic_pkgs = [
    *jb_pro,
    'code-insiders',
    'atom',
    'eclipse',
    'postgresql',
    'julia',
    'slack',
    # 'cevelop',
    'heroku',
    'deja-dup'
]

pkgs = [
    'insomnia',
    'vlc',
    'jupyter',
]

def install_classic(pkgs):
    snap_install = ['snap', 'install', '--classic']
    # sp.run([*snap_install, *pkgs])
    for pkg in pkgs:
        sp.run([*snap_install, pkg])
    


def install_edge(pkgs):
    snap_install = ['snap', 'install', '--edge', *pkgs]


def install(pkgs):
    snap_install = ['snap', 'install']
    sp.run([*snap_install, *pkgs])


def main():
    install_classic(classic_pkgs)
    # install_edge(['--classic', 'node'])
    # install(pkgs)


if __name__ == '__main__':
    main()

