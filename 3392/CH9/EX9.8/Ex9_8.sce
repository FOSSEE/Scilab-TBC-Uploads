clc
// initialization of variables
clear
// part(a)
Y=280 //MPa
A=4000 //mm^2
Am=44.99 //mm
R=100.0 //mm
r=180 //mm
r=60 //mm
// Mx is not yet known take it as unity
Mx=1 //unity
r=180
S_thMax=Mx*(A-r*Am)/(A*r*(R*Am-A))
Mx=Y/(abs(S_thMax))
printf('part(a)')
printf('\n Mx = %.2f kN.m',Mx/10^6)
// part(b)
k1=1.143
t_w=20
b_p=40
alpha=0.651
Beta=1.711
r=60 //mm
b1=2*alpha*b_p+t_w
A=b1*t_w+t_w*R
R=(b1*t_w*70+t_w*R*130)/A
Am=b1*log(80/r)+t_w*log(180/80)
// Mx not yet known teke it as unity
Mx=1
S_thMax=Mx*(A-r*Am)/(A*r*(R*Am-A))
r=70 //mm
S_thbar=Mx*(A-r*Am)/(A*r*(R*Am-A))
S_xx=-Beta*S_thbar
//tau_max=Y/2=(S_thMax-S_xx)/2
Mx=Y/(S_thMax-S_xx)
printf('\n part (b)')
printf('\n Mx = %.2f kN.m',Mx/10^6)

