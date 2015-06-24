//Exa 3.15
clc;
clear;
close;
format('v',8);

//Given Data :
T1=800+273;//K
T2=30+273;//K
T3=30+273;//K
T4=-15+273;//K
Q1=1900;//KJ
W2=290;//KJ
//Eta=1-T2/T1=W1/Q1
W1=(1-T2/T1)*Q1;//KJ
Q2=Q1-W1;//KJ
W3=W1-W2;//KJ
//COP=T4/(T3-T4)=Q4/W3
Q4=T4/(T3-T4)*W3;//KJ
disp(Q4,"Heat absorbed by refrigerant in KJ : ");
Q3=W3+Q4;//KJ
TotalHeat=Q2+Q3;//KJ
disp(TotalHeat,"Total Heat transferred to reservoir at 30 degree centigrade in KJ : ");
