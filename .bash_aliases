#alias code="/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/codium --file-forwarding com.vscodium.codium --unity-launch"
alias man="man -Hfirefox"
alias slideshow="feh -rF.dZD 3 -S dirname,filename --version-sort"

findr() {
    find / -xdev -name "$@" 2>/dev/null
}
