//Ex 7.9
clc;
clear;
close;
format('v',7);

//Given data :
d=250/1000;//meter
L=400/1000;//meter
Pmi=6.50;//bar
N=250;//rpm
NetBrakeLoad=1080;//N
Db=1.5;//meter
mf=10;//Kg/hr
mf=mf/60/60;//Kg/sec
CV=44300;//KJ/Kg

//Calculation
n=N/2;//stroke/min
IP=Pmi*10^5*(%pi/4*d^2)*L*n/60/1000;//KW
disp(IP,"Indicated Power in KW : ");
Rb=Db/2;//meter
BP=NetBrakeLoad*Rb*2*%pi*N/60/1000;//KW
disp(BP,"Brake Power in KW : ");
Etta_m=BP/IP*100;//%
disp(Etta_m,"Mechanical Efficiency in % : ");
Etta_i=IP/mf/CV*100;//%
disp(Etta_i,"Indicated Thermal Efficiency in % : ");
