// Example 11.9, Page No-482
clear
clc

Vm=10
n=8
lv=2^n
lsb=Vm/lv
lsbn= lsb*1000
printf('\nPart A: 1 LSB= %.1f mV', lsbn )

Vifs=Vm-lsb
printf('\nPart B: Vifs= %.3f V', Vifs )

ip=4.8
d=1+ ip/lsb
printf('\nPart C: D= %d', d)
d=123
op=dec2bin(d,8)
printf('\n Digital Output= %s', op)
