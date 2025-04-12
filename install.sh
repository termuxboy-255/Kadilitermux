#!/bin/bash

# Uliza jina la mtumiaji
read -p "Weka jina lako (litaonekana kwenye logo): " jinalako

# Tengeneza directory ya logo kama haipo
mkdir -p ~/.termux-logo

# Logo ya kichwa (skull/toxic head)
cat <<'EOF' > ~/.termux-logo/toxic.txt
        ______
     .-'      '-.
    /            \
   |              |
   |,  .-.  .-.  ,|
   | )(_o/  \o_)( |
   |/     /\     \|
   (_     ^^     _)
    \__|IIIIII|__/
     | \IIIIII/ |
     \          /
      `--------`
EOF

# Tengeneza ~/.bashrc upya (au override)
cat <<EOL > ~/.bashrc
clear
cat ~/.termux-logo/toxic.txt
toilet -f big -F metal "$jinalako"
echo -e "\033[1;32mKaribu kwenye Termux yako, ${jinalako} Toxic Edition!\033[0m"
echo -e "\033[1;34mCreated by Kadili\033[0m"
PS1='${debian_chroot:+($debian_chroot)}\[\033[1;35m\]\u@\h:\w \$ \[\033[00m\]'
EOL

echo "Imewekwa vizuri. Fungua Termux upya uione logo yako!"
