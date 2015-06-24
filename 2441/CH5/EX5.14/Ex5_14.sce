//Example 5.14
clc;clear;close;
format('v',6);
C1=300;//MW
C2=400;//MW
G1=4;//%//droop characteristics of governer
G2=5;//%//droop characteristics of governer
L=600;//MW
f=50;//Hz
//Load on first generator =L1
//Load on second generator =L-L1
//f-G1*f/100*(L1/C1)=f-G2*f/100*(L2/C2)
L1=G2*L/C2/(G1/C1+G2/C2);//MW
L2=L-L1;//MW
disp(L1,"Load on first generator(MW)");
disp(L2,"Load on second generator(MW)");
fLoad=f*(1-L1/C1*G1/100);//Hz
disp(fLoad,"Frequency at load(Hz)");
