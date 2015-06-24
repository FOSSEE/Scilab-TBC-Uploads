clc
clear

//input
d=75;//load at lagging powerfactor in kW
pf=0.75;//lagging power factor
v=1100;//supply voltage in volts
f=50;//frequency in hertz
d0=10;//desired increment in load in kW

//calculations
kVAi=d/pf;//initial kVA
cos2=(d+d0)/kVAi;//final power factor 
phi1=acos(pf);
phi2=acos(cos2);
kvarc=kVAi*(d0)*(sin(phi1)-sin(phi2));//capacitor kvar
c=(kvarc*(10^3)*(10^6))/(v*v*2*%pi*f);//capacitance required in microfarad

//output
mprintf('the power factor has to be increased to %3.2f lag and the value of capacitance required is %3.0f uF',cos2,c)
