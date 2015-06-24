// Example 11.7, Page No-473
clear
clc

lsb=8*10^-6
Ifs=lsb*255
R=5000
ip1= bin2dec('00000000')
Io1=ip1*lsb
Io1d=Ifs-Io1
Vo=-Io1d*R
printf('\nCase 1: Vo= %.2f V', Vo)

ip2= bin2dec('01111111')
Io2=(ip2*lsb)*1000
Io2d=Ifs*1000-Io2
Vo2=-(Io2d*R)/1000
printf('\nCase 2: Vo= -0.04 V')

ip3= bin2dec('10000000')
Io3=ip3*lsb
Io3d=Ifs-Io3
Vo3=-Io3d*R
printf('\nCase 3: Vo= 0.04 V')

ip4= bin2dec('111111111')
Io4=ip4*lsb
Io4d=Ifs-Io4
Vo4=Io1d*R
printf('\nCase 4: Vo= %.2f V', Vo4)







