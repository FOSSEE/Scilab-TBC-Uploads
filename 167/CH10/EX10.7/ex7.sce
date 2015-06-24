//example 7
//Second-Law Analysis of an Ideal Rankine Cycle
clear
clc
xdest12=0 //irreversibility during the process 1 to 2 in kJ/kg 
xdest34=0 //irreversibility during the process 3 to 4 in kJ/kg 
s2=1.2132 //specific entropy for state 2 in kJ/kg-K
s4=6.7450 //specific entropy for state 4 in kJ/kg-K
s1=s2 //specific entropy for state 1 in kJ/kg-K
s3=s4 //specific entropy for state 3 in kJ/kg-K
qin23=2728.6 //heat input for the process 2 to 3 in kJ/kg
Tsource=1600 //temperature of furnaace in K
To=290 //temp. of cooling medium in K
xdest23=To*(s3-s2-qin23/Tsource) //irreversibility during the process 2 to 3 in kJ/kg
Tsink=To //temperature of sink
qout41=2018.6 //in kJ/kg
xdest41=To*(s1-s4+qout41/Tsink) //irreversibility during the process 4 to 1 in kJ/kg
xdestcycle=xdest12+xdest23+xdest34+xdest41 //irreversibility of cycle
ho=71.355 //in kJ/kg
so=0.2533 //in kJ/kg-K
h4=2403.0 //in kJ/kg
e4=(h4-ho)-To*(s4-so)//exergy of steam leaving the turbine in kJ/kg
printf("\n Hence, the exergy destruction associated with the rankine cycle is = %.0f kJ/kg. \n",xdestcycle);
printf("\n and exergy of steam leaving the turbine is = %.0f. \n",e4);