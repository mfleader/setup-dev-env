# import beautifulsoup4
import requests
from requests_html import HTMLSession
import re
import os
import subprocess



def get_links(url):
    session = HTMLSession()
    r = session.get(url)
    return r.html.absolute_links


def main():
    install_cmds = ['dnf', 'install', '-y']
    rmfr = ['rm', '-fr']
    snap_install = ['snap', 'install']
    resps = '/console-responses/'

    def init():
        tools = [
            'gcc-c++',
            'make',
            'cmake',
            'curl',
            'vim',
            'xclip',
            'java-latest-openjdk',
            'deja-dup',        # backup and restore
            'libssl',          # needed for r packages
            'libcurl-devel',   # needed for r packages
            'libxml2-devel',   # needed for r packages
            'cairo-devel',     # needed for r packages
            'libXt-devel',     # needed for r packages
        ]
        subprocess.run([*install_cmds, *tools])

        # https://websiteforstudents.com/automatically-backup-files-to-google-drive-with-deja-dup-on-ubuntu-16-04-18-04/

    def langs():
        julia_repo = 'nalimilan/julia'
        subprocess.run(['dnf', 'copr', 'enable', '-y', julia_repo])
        linguas = [
            'R',
            'julia',
        ]
        subprocess.run([*install_cmds, *linguas])

    def java_tools():
        tools = [
            'eclipse',
            'maven'
        ]
        subprocess.run([*install_cmds, *tools])

    def nodejs():
        # src_host = 'https://rpm.nodesource.com/setup_10.x'
        # subprocess.run(['curl', '-sL', src_host, '|', 'bash', '-'])
        # subprocess.run([*install_cmds, 'nodejs'])
        # Install snap first
        v = 10
        node_v = ''.join('--channel=', v)
        subprocess.run([*snap_install, '--stable', '--classic', node_v])

    def rstudio():
        host = 'https://www.rstudio.com/products/rstudio/download/#download'
        links = get_links(host)
        link = next(filter(lambda l: 'centos' in l and 'x86_64.rpm' in l, links))
        name = link[link.find('rstudio-'):]
        path = './' + name
        subprocess.run(['curl', link, '--output', path])

        """Obtaining the Public Key
        To validate a build's signature, you must first import and trust
        RStudio's public code-signing key.
        You can obtain the public key from a keyserver using gpg at a
        terminal:
        """
        # gpg --keyserver keys.gnupg.net --recv-keys 3F32EE77E331692F
        """For RPM Installers
        Validation is built into the rpm command; however, rpm doesn’t
        use the GnuPG key store, so you first need to import the public key.
        You can validate the signature as follows:
        """
        # gpg --export --armor 3F32EE77E331692F > rstudio-signing.key
        # rpm --import rstudio-signing.key
        # rpm -K rstudio-download-1.2.3.rpm

        subprocess.run([*install_cmds, path])
        subprocess.run([*rmfr, path])

        # seems to need these symbolic links, but maybe they use lib64
        rstudio_bin = '/lib/rstudio/bin/'
        lib64 = '/lib64/'
        subprocess.run(['ln', '-s', ''.join((rstudio_bin, 'libssl.so.1.0.0')), ''.join((rstudio_bin,'libssl.so.10'))])
        subprocess.run(['ln', '-s', ''.join((rstudio_bin, 'libcrypto.so.1.0.0')), ''.join((rstudio_bin,'libcrypto.so.10'))])

    def r_pkgs():
        r_pkg_install = 'install_r_pkgs.R'
        subprocess.run(['Rscript', r_pkg_install])

    def atom():
        host = 'https://atom.io/download/rpm'
        name = 'atom.x86_64.rpm'
        path = './' + name
        # links = get_links(host)
        #subprocess.run(['wget', host, '-o', path])
        #subprocess.run([*install_cmds, path])
        #subprocess.run([*rmfr, path])
        subprocess.run(['rpm', '--import', 'https://packagecloud.io/AtomEditor/atom/gpgkey'])
        subprocess.run(['sh', '-c', 'echo -e "[Atom]\nname=Atom Editor\nbaseurl=https://packagecloud.io/AtomEditor/atom/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/AtomEditor/atom/gpgkey" > /etc/yum.repos.d/atom.repo'])

    def juno():
        subprocess.run(['apm', 'install', 'uber-juno'])
        subprocess.run(['atom'])

    def conda():
        installer = 'anaconda3.sh'
        links = get_links('https://www.anaconda.com/distribution/')
        link = next(filter(lambda l: 'Anaconda3' in l and 'Linux' in l, links))
        subprocess.run(['curl', link, '--output ' + installer])
        subprocess.run(['./' + installer])

    def mysql():
        pass

    def anaconda():
        pass

    def jplab():
        pass

    def fonts():
        responses = ''.join((resps, 'fira-code.txt'))
        subprocess.run(['cat', resps, '|', 'dnf', 'copr', 'enable', 'evana/fira-code-fonts'])
        subprocess.run([*install_cmds, 'fira-code-fonts'])

    def snap():
        """Either log out and back in again, or restart your system,
         to ensure snap’s paths are updated correctly."""
        subprocess.run([*install_cmds, 'snapd'])

        """To enable classic snap support, enter the following to
        create a symbolic link between /var/lib/snapd/snap and /snap:"""
        subprocess.run(['ln', '-s', '/var/lib/snapd/snap', '/snap'])

    def adobe_flash():
        pass

    def graph_mining_r():
        url_rt = 'https://www.csc2.ncsu.edu/faculty/nfsamato/practical-graph-mining-with-R/R-code/'
        files = [
          'GraphKernelFunctions',
          'LinkAnalysis',
          'ProximityMeasure',
          'FrequentSubgraphMining',
          'GraphClusterAnalysis',
          'Classification',
          'DimensionalityReduction',
          'AnomalyDetection',
          'PerformanceMetrics',
          'ParallelR'
        ]

    def rpmfusion():
        free = 'https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm'
        nonfree = 'https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
        subprocess.run([*install_cmds, free, nonfree])

        def media_pkgs():
            pkgs = [
                'ffmpeg-libs',
                'vlc'
            ]
            subprocess.run([*install_cmds, *pkgs])

        media_pkgs()



    #init()
    #langs()
    #nodejs()
    #java_tools()
    rstudio()
    #atom()
    # juno()
    # fonts()










if __name__ == '__main__':
    main()
