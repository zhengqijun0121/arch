echo "[Step1] start to fdisk"

fdisk /dev/sda <<EOF
o
g
n
1
2048
+512M
t
1
n
2
1050624
+16G
t
2
19
n
3
34605056

t
3
20
w
EOF

echo "[Step1] fdisk finished"

fdisk -l

