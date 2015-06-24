//Example 14-3, Page No - 556

clear
clc

Z0 =50
Zl =172
f =460*10^6
VF =0.86

len =(246/f)*VF
printf('The length of the impedance matching section \n needed for the Q section is %.2f feet',len*10^6)
