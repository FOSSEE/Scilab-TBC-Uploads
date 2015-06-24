//Exa 3.3
clc;
clear;
close;
format('v',6);

//Given Data :
Q2=100;//KJ/sec or KW
T2=-20+273;//K
T1=35+273;//K
COP=T2/(T1-T2);
disp(COP,"COP  is : ");
W=Q2/COP;//KW
disp(W,"Power input in KJ/s or KW : ");
COPheatpump=T1/(T1-T2);//
disp(COPheatpump,"COP as heat pump : ");
Eta_engine=(1-T2/T1)*100;
disp(Eta_engine,"Efficiency as an engine in % : ");
