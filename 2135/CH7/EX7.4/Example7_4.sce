//Ex 7.4
clc;
clear;
close;
format('v',7);

//Given data :
IP=50;//KW
Vf=16;//litre/hr
Sp_gravity_fuel=0.755;
CV=44500;//KJ/Kg
N=3000;//rpm
Pmi=5.2;//bar

//Calculation
mf=Vf*10^-3*Sp_gravity_fuel*1000;//Kg/hr
mf=mf/3600;//Kg/s
Etta_i=IP/mf/CV*100;//%
disp(Etta_i,"Indicated thermal efficiency in % :");
//IP=Pmi*10^5*%pi/4*d^2*L*N/2/60/1000;//KW
d=(IP*60*1000/Pmi/10^5/(%pi/4)/1.1/(N/2))^(1/3);//meter(L=1.1*d)
disp(d*100,"Bore in cm : ");
L=1.1*d;//meter
disp(L*100,"Length of stroke in cm : ");
