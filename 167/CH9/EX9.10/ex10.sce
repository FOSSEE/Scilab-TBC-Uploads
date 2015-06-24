//ex10
//Second-Law Analysis of an Otto Cycle
clear
clc
//In Example 9–2, various quantities of interest were given
r=8;//constant ratio 
T0=290;//temp in K
T1=290;//temp at state 1 in K
T2=652.4;//temp at state 2 in K
T3=1575.1;//temp at state 3 in K
P2=179.97;//pressure at state 2 in kPa
P3=434.5;//pressure at state 3 in kPa
Qin=800;//heat input in kJ/kg
Qout=381.83;//heat output in kJ/kg
Wnet=418.17;//net work done in kJ/kg
s3o=3.5045;//entropy at state 3
s2o=2.4975;//entropy at state 2
R=0.287;//gas constant at kJ/kg/mol/K

s23=s3o-s2o-R*log(P3/P2);//entropy change for state 2 -3 kJ/kg.K
Qin=800;//heat input in kJ/kg
Tsource=1700;//source temperature in K
xdest23=T0*(s23-Qin/Tsource);//irreversibilty for state 2 3
//For process 4-1,
s14=-s23;//entropy change at state 1 4 
Qout=381.83;//heat output in kJ/kg
Tsink=290;//temp of sink in K
xdest41=T0*(s14+Qout/Tsink);//irreversibility for state 4 1
xdest12=0;//irreversibilty for state 1 2 
xdest34=0;//irreversibility at state 3 4
xdestcycle=xdest12+xdest23+xdest34+xdest41;//net irreversibility 
printf('Irreversibility of cycle = %.1f kJ/kg \n',xdestcycle);
s40=-s14;//entropy change for state 4 0 in kJ/k/kg
u40=Qout;//internal energy at state 4 0 in kJ/kg
v40=0;//specific volume at state 40 in m^3/kg
v41=0;//specific volume at state 41 in m^3/kg
P0=10;//initial pressure in kPa(junk value as P0 is multiplied by zero in next statement)
Q=u40-T0*s40+P0*v40;//heat in kJ/kg 
printf(' Exergy distruction = %.1f kJ/kg \n',Q);
