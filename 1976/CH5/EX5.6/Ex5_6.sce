
//To Detemine power absorbed and the power factor
//Page 295
clc;
clear;
Vs=15; //Secondary Voltage
P=500*(10^3) // Power Taken
pfs=0.6; //Power Factor

Is=P/(Vs*pfs); //Secondary Current

//Taking Current as Reference voltage will be
t=acosd(pfs); //Power Factor Angle
Vsp=Vs*(exp(%i*(t/180)*%pi)); //Phasor Secondary Voltage
R=Vsp/Is; //Impedance

//if the resistance is doubled, The Total impedance doubles, Considering Vs as reference
R2=real(R)+R;
I2=Vs/R2; //New Current
pfn=cosd(atand(imag(I2)/real(I2))); //power factor of new current
Pab=Vs*abs(I2)*pfn/1000; //Power Absorbed

printf('The Power Factor and The Absorbed power are %g lagging and %g kW respectively.\n',pfn,Pab)
