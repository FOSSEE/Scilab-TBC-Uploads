clc
clear
//INPUT DATA
n=1.2;//constant for multistage compressor
c=4;//clearance
p4=20;//pressure in bar
p1=1;//pressure in bar
v1=15;//volume of free air in m^3/min

//CALCULATIONS
N=2.16;//(4^N=20) //No.of stages
C=(p4/p1)^(1/3);//Exact stage pressure ratio
p2=C*p1;//Intermediate pressure in bar 
p3=C*p2;//Intermediate pressure in bar
p4=C*p3;//Intermediate pressure in bar
P=(3*(n/(n-1))*p1*10^5*(v1/60)*(((p4/p1)^((n-1)/(3*n)))-1))/1000;//Power required to compress

//OUTPUT
printf('(a)No.of stages is %3.2f \n (b)Intermediate pressures %3.2f bar \n pressure p3 %3.2f bar \n pressure p4 %3.2f bar \n (c)Power required to compress is %3.i kW',N,p2,p3,p4,P)

