// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Capacitance Voltage characteristics
//Ex_7//page 455
e = 1.6*10^-19;
Na=10^16
tox=550*10^-8     //oxide thickness
eps=11.7*8.85*10^-14
eps_ox=3.9*8.85*10^-14
Cox=eps_ox/tox*10^9
ni=1.5*10^10     //intrinsic carrier concentration
phi_fp=0.0259*log(Na/ni)
xdt=(4*eps*phi_fp/(e*Na))^0.5
Cmin=eps_ox/(tox+(eps_ox/eps)*xdt)*10^9
r=Cmin/Cox
CFB=eps_ox/(tox+(eps_ox/eps)*(0.0259*eps/(e*Na))^0.5) *10^9   //flat band capacitance
r2=CFB/Cox
printf('The value of oxide capacitance, minimum capacitance and flat band capacitance are %1.2f nF, %1.2f nF and %1.2f nF respectively',Cox,Cmin,CFB)