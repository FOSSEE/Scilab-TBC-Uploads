//Exa 1.32
clc;
clear;
close;
format('v',7);

//Given Data :
p0=101.3;//KPa
V1=1.2;//m^3
V2=0;//m^3
//No p.dV work by rigid boundary
W=p0*integrate('1','V',V1,V2);
disp(W,"Workdone by the air  in KJ : ");
