//Example 6.8// current and phase angle errors
clc;
clear;
Ns=99;//no. of secondary turns
Xe=0.55;//in ohms
Xs=0.35;//in ohms
f=50;//frequency in hertz
Np=1;//no. of primary turns
Is=5;//SECONDARY WINDING CURRENT IN AMPERE
Rs=0.4;//in ohms
Re= (20)/(Is^2);//innohms
Xe=0;//
mmf=6;//magneromotive force in AT
mmfc=8;//mmf for core loss in AT
ts=Rs+Re;//total secondary circuit resistance
tr=Xe+Xs;//total secondary circuit reactance
d= atand(tr/ts);//secondady phase angle in degree
csd= cosd(d);
sd=sind(d);
Kt=99;//
Knom=100
Iw= mmfc/Np;//loss component in ampere
Im= mmf/Np;//magnetising component of current in ampere
Kact= Kt+((Im*sd)+(Iw*csd))/Is;//actual ratio
Re=((Knom-Kact)/Kact)*100;//current error in percentage
Pa=((180/%pi)*(Im*csd-Iw*sd))/(Kt*Is);//phase error
disp(Re,"current error in percentage is")
disp(Pa,"phase error in degree is")
