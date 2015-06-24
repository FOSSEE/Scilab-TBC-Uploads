//ques3
//The Ideal Diesel Cycle
clear
clc
disp('(a)');
//(a) the temperature and pressure of air at the end of each process
v1=117;//volume at state 1 in in^3
r=18;//volume ratio for 1 2 process
v2=v1/r;//volume at state 2 in in^3
rc=2;//volume ratio for 2-3 process
v3=rc*v2;//volume at state 3 in in^3
v4=v1;//volume state 4 in in^3
//Process 1-2 (isentropic compression of an ideal gas, constant specific heats)
T1=540;//temperature at state 1 in R
k=1.4;//constant
T2=T1*(v1/v2)^(k-1)//temperature in state 2 in R r=v1/v2
P1=14.7;//pressure at state 1 in psia
P2=P1*(v1/v2)^k//pressure at state 2 in psia
//Process 2-3 (constant-pressure heat addition to an ideal gas)
P3=P2//pressure at state 3 in psia
T3=T2*(v3/v2)//temp at state 3 in R rc=v3/v2
//Process 3-4 (isentropic expansion of an ideal gas, constant specific heats)
T4=T3*(v3/v4)^(k-1)//temp at state 4 in R
P4=P3*(v3/v4)^k//pressure at state 4 in psia

//(b)
R=0.3704//gas constant for given substance in btu/R.lbm
m=P1*v1/(R*T1)/1728;//mass in lbm
//Process 2-3 is a constant-pressure heat-addition process, for which the boundary work and du terms can be combined to dh
Cp=0.240//specific heat at constant pressure in Btu/lbm.R

Qin=m*Cp*(T3-T2);//heat input in Btu

//Process 4-1 is a constant-volume heat-rejection process
Cv=0.171;//specific heat capacity at constant volume in Btu/lbm.R
Qout=m*Cv*(T4-T1);//heat output in Btu

w=Qin-Qout;//work done in Btu
printf(' (b) Net work done = %.3f Btu \n',w);
nth=w/Qin;//efficiency of heat engine
printf('     The thermal efficiency = %.3f \n',nth);

//(c)The mean effective pressure
MEP=w/(v1-v2)*778*12;//mean effective pressure (multiplied by constants for unit conversion to psia) 
printf(' (c) Mean effectve pressure = %.0f psia \n ',MEP);
