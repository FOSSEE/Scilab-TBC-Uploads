//Ex 7.3
clc;
clear;
close;
format('v',6);

//Given data :
r=6;//cm
d=10/100;//m
L=12.5/100;//m
Pmi=2.6;//bar
W=60;//N
S=19;//N
R=40/100;//m
mf=1;//Kg/hr
mf=mf/60/60;//Kg/sec
CV=42000;//KJ/Kg
N=2000;//rpm

//Calculation
A=%pi/4*d^2;//m^2
n=N/2;//no. of strokes/min
IP=Pmi*10^5*A*L*n/60/1000;//KW
disp(IP,"Indicated Power in KW : ");
BP=(W-S)*R*2*%pi*N/60/1000;//KW
disp(BP,"Brake Power in KW : ");
Etta_m=BP/IP*100;//%
disp(Etta_m,"Mechanical efficiency in % : ");
Etta_o=BP/mf/CV*100;//%
disp(Etta_o,"Overall efficiency in % : ");
Gamma=1.4;//constant
Etta_a=(1-1/(r^(Gamma-1)))*100 ;//%
disp(Etta_a,"Air standard efficiency in % : ");
Etta_r=Etta_o/Etta_a*100;//%
disp(Etta_r,"Relative efficiency in % : ");
