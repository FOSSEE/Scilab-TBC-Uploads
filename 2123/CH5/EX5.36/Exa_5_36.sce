//Example No. 5.36
clc;
clear;
close;
format('v',9);

//Given Data : 
V1=220;//V
Ra=0.05;//ohm
N1=1000;//rpm
Ia=100;//A
N2=500;//rpm
Eb=V1-Ia*Ra;//V
Ib=2*Ia;//A
Rb=(V1+Eb)/Ib-Ra;//ohm
disp(Rb,"Resistance to be added in ohm : ");
Tb=Eb/(N1*2*%pi/60)*Ib;//N-m
disp(Tb,"Initial braking torque in N-m : ");
Eb2=Eb*N2/N1;//V
Ib2=(V1+Eb2)/(Ra+Rb);//A
Tb2=Eb2/(N2*2*%pi/60)*Ib2;//N-m
disp(Tb2,"Initial braking torque in N-m : ");
