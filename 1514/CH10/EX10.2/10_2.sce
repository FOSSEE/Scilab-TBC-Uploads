//chapter 10
//example 10.2
//page 290
clear all;
clc ;
//given
gm=3;//in mA/V
Rd=2.7;//in Kohm
Rs=1;
Rl=10;
rd=100;//in Kohm
Av=-gm*Rd/(1+gm*Rs);
Rp=1/rd+1/Rd+1/Rl
Av1=-gm*(1/Rp);
printf('\nAv=%d for unbypassed series resistor and  \nAv=%.1f for bypassed resistor with load resistor',Av,Av1)
