clc
// initialization of variables
clear
S_u=1300 //MPa
K_C=69 // MPa sqrt(m)
SF=2.2
//calculations
S_c=S_u/2.2
a=1/%pi*(K_C/S_c)^2
printf('a = %.2f mm',a*10^3)
