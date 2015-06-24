//Example 17-2,Page No -681

clear
clc

flo = 2*10^9
fd =3840*10^6
B =36*10^6

fu =fd+flo
C =2*B

printf('The uplink frequency is %.2f Ghz',fu/10^9)
printf('\n\nThe data rate is %d Mbps', C/10^6)
