clc
// initialization of variables
clear
l=15 //m
R=10 //m
d=0.8 //m
b=0.13 //m
Po=2400 //N/m
P=4800 //N/m
//calculations
a=R-d/2
c=R+d/2
A=b*d
Am=b*log(c/a)
Mx=(Po+P)*l^2/8
S_thMax=Mx*(A-a*Am)/(A*a*(R*Am-A))
// To find out max radial stress
// Nr=d*log(r/a)-(r-a)*log(c/a)
// Dr=r*d*(R*log(c/a)-d)
// S_rr=Mx/b*Nr/Dr
r=a*exp(1-(a/d*log(c/a)))
Nr=d*log(r/a)-(r-a)*log(c/a)
Dr=r*d*(R*log(c/a)-d)
S_rrMax=Mx/b*Nr/Dr
printf('\n part (a)')
printf('\n Maximum circumferential stress is %.1f MPa',S_thMax/10^6)
printf('\n Maximum radial stress is %.3f MPa',S_rrMax/10^6)
// part (b)
Ix=b*d^3/12
S_th=Mx*d/(2*Ix)
printf('\n part (b)')
printf('\n Maximum circumferential stress using straight beam formula is %.1f MPa',S_th/10^6)
