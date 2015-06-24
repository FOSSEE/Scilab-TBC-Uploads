

//example 5.19
//calculate drawdown at 40m
clc;
//given
Q=1500;            //discharge(lit/min)
S=0.004;           //storage coefficient
k=35;              //permeability
t=20;              //time of pumping
b=30;              //thickness of acquifer
r=40;              //distance of observation well
T=k*b;
s=Q*(2.303*log10(4*T*t*3600/(60*60*24*r^2*S))-0.5772)*60*60*24/(4*%pi*T*60000);    //Jacob's equation
s=round(s*100)/100;
mprintf("drawdown at 40m=%f m.",s);

