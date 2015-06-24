//Example 5.20
clc;clear;close;
format('v',6);
L=14;//MW//Total Load
C1=15;//MW
R1=3;//%//speed regulation
C2=4;//MW
R2=4;//%//speed regulation
LB=4;//MW//Load on bus bar
LA=10;//MW///Load on bus bar
f=50;//Hz
//Load on station A= L1 MW
//Load on station B= L-L1 MW
//f-C1*f/100*(L1/C1)=f-C2*f/100*(L2/C2)
L1=R2*L/C2/(R1/C1+R2/C2);//MW
L2=L-L1;//MW
disp(L1,"Load generation at station A(MW)");
disp(L2,"Load generation at station B(MW)");
Pt=L1-LA;//MW//Power transmitted A to B
f_oper=f-R1/100/C1*(L1)*f;//Hz
disp(f_oper,"Operating Frequency(Hz)");
