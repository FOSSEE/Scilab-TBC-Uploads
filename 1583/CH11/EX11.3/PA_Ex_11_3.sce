clc
//Chapter 11:Power amplifiers
//example 11.2 page no 474
//given
Po=5//max power in watts
Rl=50//load resistance in ohm
f=1e6//operating frequency in hertz
Vcc=sqrt(2*Rl*Po)
Ptmax=0.1*Po//allowable power dissipation
I_m=0.5
Im=(2*%pi*Vcc*I_m)/Rl//peak collector current
mprintf('required supply voltage is %f V \n max allowable power dissipation is %f W \n peak collector current is %f A',Vcc,Ptmax,Im)
