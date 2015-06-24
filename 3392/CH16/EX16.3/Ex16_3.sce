clc
// initialization of variables
clear
rho=0.75 //mm
S_n=32.97e-06 // M
S_cc=6.1
q=0.69
S_ce=1+q*(S_cc-1)
// M is not known. take it as unity
M=1
S_e=S_ce*S_n
printf('part (a)')
printf('\n Effective stress = %.1e M',S_e)
// part (b)
S_w=43 //MPa
M=S_w/S_e
printf('\n part (b)')
printf('\n M =%.1f N.m',M/10^3)

