//Example 11-2, Page no - 400

clear
clc

B=12.5*10^3
SN_dB= 25

C_th = 2*B
SN=316.2
C =B*3.32*log10(SN+1)
N= 2^(C/(2*B))

printf('The maximum theorotical data rate is %.1f kbps',C_th/10^3)
printf('\n  The maximum theorotical capacity of channel is %.1f Kbps',C/10^3)
printf('\n The number of levels needed to acheive maximum speed are %d',N)
