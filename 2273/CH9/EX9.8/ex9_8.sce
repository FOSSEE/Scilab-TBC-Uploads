//find safe working voltage of cable
clear;
clc;
//soltion
//given
d=4;//cm
D=10;//cm
e1=5;//realtive permeabilty
e2=4;//realtive permeabilty
e3=3;//realtive permeabilty
d1=e1*d/e2;
d2=e1*d/e3;
gmax=40;//kV/cm
Vper=(gmax/2)*[d*log(d1/d)+d1*log(d2/d1)+d2*log(D/d2)];
Vsafe1=Vper/sqrt(2);
printf("Safe working voltage(rms) of a cable= %.2f kV\n",Vsafe1);
Vpeak=(gmax/2)*[d*log(D/d)];
Vsafe2=Vpeak/sqrt(2);
printf("Safe working voltage(rms) of the ungraded cable= %.2f kV",Vsafe2);
