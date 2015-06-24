//Example 9-5, page No- 329

clear
clc

SN_ip = 8
SN_op = 6

NR = SN_ip/SN_op
NF = 10*log10(NR)

printf('The noise factor is %.3f',NR)
printf('\n The noise figure is %.2f dB',NF)
