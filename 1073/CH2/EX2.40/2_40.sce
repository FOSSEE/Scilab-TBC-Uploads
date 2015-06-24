clc;
clear;
//Example 2.40
//Given
rho=9000; //kg/cubic m
Cp=0.38;  //kJ/(kg.K)
Cp=Cp*1000    //J/(kg.K)
k=370;    //W/m.K
h=90;     //W/sq m.K
l=400;    //mm
l=l/1000 ;   //length of copper slab
t=5/1000 ;   //thickness in [m]
A=2*l^2     //Area of slab
V=t*l^2       //Volume in [cubic m]
L_dash=V/A    //[m]
//for slab of thickness 2x
//L_dash=x
L_dash=0.025 ;   //[m]
Nbi=h*L_dash/k    //< 0.10
var=h*A/(rho*Cp*V)
//As Nbi<0.10,we can apply lumped capacity analysis
T=363    //[K]
T_inf=303    //[K]
T0=523    //[K]
t=-(log((T-T_inf)/(T0-T_inf)))/var
printf("Time at which slab temperature becomes 363 K is %f s",t)
printf("CALCULATION MISTAKE IN BOOK IN LAST LINE")
