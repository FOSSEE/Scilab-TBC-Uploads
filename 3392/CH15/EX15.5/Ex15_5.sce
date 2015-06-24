clc
// initialization of variables
clear
// For 30 mm crack
a=30/2 // mm  crack
S_30 =600 //MPa
a=a*10^-3
C=S_30*sqrt(a)
// For 120 mm crack
a=120/2
a=a*10^-3
S_120=C/sqrt(a)
printf('Sigma_120 = %d MPa',S_120)

