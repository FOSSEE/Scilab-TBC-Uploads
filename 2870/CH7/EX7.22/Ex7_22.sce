clc;clear;
//Example 7.22
//difference in answers is arised due the fact the Energy savings have been rounded to the multiple of 100

//given data
T1=20+273;
T2=24+273;
P1=101;
P2=801;
D=3/1000;//in m
Cdischarge=0.65;
ncomp=0.8;
nmotor=0.92;
UC=0.078;//unit cost

//constants used
R=0.287;//in kJ/kg K
k=1.4;
n=1.4;

//calculations
Win=n*R*T1/(ncomp*(n-1))*((P2/P1)^((n-1)/n)-1);
A=%pi*D^2/4;
mair=Cdischarge*(2/(k+1))^(1/(k-1))*P2*A/(R*T2)*sqrt(k*R*1000*2/(k+1)*T2);//factor of 1000 to m^2/s^2
PW=mair*Win;//Power wasted
ES=PW*4200/nmotor;//4200 is operating hours ES stands for Energy savings
disp(ES,'Energy savings in kWh/yr');
CS=ES*UC;
disp(ceil(CS),'cost savings in Dollar/yr')
