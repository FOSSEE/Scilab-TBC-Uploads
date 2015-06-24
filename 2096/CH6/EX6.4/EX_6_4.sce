//Example 6.4// ratio error and phase angle error
clc;
clear;
Ns=250;//no. of secondary turns
Rp=1.4;//in ohms
f=50;//frequency in hertz
Np=1;//no. of primary turns
Is=5;//SECONDARY WINDING CURRENT IN AMPERE
Re=1.1;//external burden in ohms
mmf=80;//magneromotive force in AT
Il=1.1;//IRON LOSS IN WATTS
Kt=Ns/Np;//turn ratio
Se=sqrt(Rp^2+Re^2);//secomdary circuit impedance in ohms
csd=Rp/Se;//cos angle
sd=Il/Se;//SIN ANGLE

Es=Is*Se;//voltage induced in secondary winding
Ep=Es/Kt;//primary voltage
Iw= Il/Ep;//loss component in ampere
Im= mmf/Np;//magnetising component of current in ampere
Kact= Kt+((Im*sd)+(Iw*csd))/Is;//actual ratio
Re= ((Kt-Kact)/Kact)*100;//ratio error in percentage
Pa=((180/%pi)*(Im*csd-Iw*sd)/(Kt*Is));//phase angle in degree
disp(Re,"ratio error in percentage is")
disp(Pa,"phase angle in degree is")
