//Exa 1.31
clc;
clear;
close;
format('v',7);

//Given Data :
p0=1;//bar
p0=p0*10^5;//N/m^2
V1=0;//m^3
V2=0.7;//m^3
//No p.dV work for cylinder as boundaries are 
W=p0*integrate('1','V',V1,V2);
W=W/1000;//KJ/Kg
disp(W,"Workdone by the system  in KJ : ");
