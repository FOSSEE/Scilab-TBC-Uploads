clc
//Chapter 11:Power amplifiers
//example 11.1 page no 456
//given
Po=5//max power in watts
Rl=50//load resistance in ohm
Vp=sqrt(2*5*50)//peak voltage across Rl
Vcc=24//supply voltage
Ip=Vp/Rl//peak current corresponding to Vp
Iq=Vcc/50//Q point current value
Pcc=Vcc*Iq//power supplied
Eff=(Po/Pcc)*100//efficiency
mprintf('peak voltage across Rl is %f V \n the peak current is %f A \n the power supplied is %f W \n the efficiency is %f ',Vp,Ip,Pcc,Eff)
disp('the transistor that is selected must be able to dissipate 11.52W in case the input power drops to zero and the transistor Vce breakdown voltage must be at least 48V(2*Vcc)')
