clc
// initialization of variables
clear
b=10 //mm
M=1
t=50 //mm
rho=5 //mm
h=25 //mm
c=60 //mm
SF=4.0
//part (a)
S_cc=2.8
q=0.94
S_ce=1+q*(S_cc-1)
// M is not known. take it as unity
S_n=3*M*t/(2*h*(c^3-t^3))
S_e=S_ce*S_n
printf('part (a)')
printf('\n Effective stress = %.1e M',S_e)
//part (b)
S_max=172 //MPa
S_w=S_max/SF
M=S_w/S_e
printf('\n part (b)')
printf('\n M =%.1f N.m',M/10^3)

