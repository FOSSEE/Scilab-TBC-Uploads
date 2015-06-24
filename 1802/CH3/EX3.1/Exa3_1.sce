//Exa 3.1
clc;
clear;
close;
//Given Data :
format('v',6);
m=1/10;//unitless
EL=66;//in KV
E=EL/sqrt(3);//in KV
//Formula : E=E1+(11/10)*E1+(131/100)*E1+(1651/1000)*E1=(5061/1000)*E1
E1=E*(1000/5061);//in KV
disp(E1,"E1(in KV) :");
E2=E1*(11/10);//in KV
disp(E2,"E1(in KV) :");
E3=E1*(131/100);//in KV
disp(E3,"E2(in KV) :");
E4=E1*(1651/1000);//in KV
disp(E4,"E4(in KV) :");
Eta=(E/(4*E4))*100;//in %
disp(Eta,"String Efficiency(in %) :");