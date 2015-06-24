//ques10
//Heating of a Gas at Constant Pressure
clear
clc
//(a) The final temperature can be determined by using the ideal-gas relation b/w state 1 and 3
P1=150//pressure at state 1 in kPa
P3=350//pressure at state 2 in kPa
T1=300//temperature at state 1 in K
//V3=2*V1
//T3=P3*V3/(P1*V1)*T1;
T3=P3*2/P1*T1;//temperature at state 2 in K
printf('(a) Final Temperature = %.0f K \n',T3);

//(b) The work done is area under the process curve on P-V diagram
V2=0.8//Volume at state 2 in m^3
V1=0.4//volume at state 1 in  m^3
P2=350//pressure at state 2 in kPa
W13=(V2-V1)*P2;//workdone for process 1-3 in kJ
printf(' (b) Work Done = %.0f kJ  \n',W13'); 

//(c) Mass of the system can be determined by ideal gas equation
R=0.287//gas constant for a given substance water in kJ/mol.K
m=P1*V1/(R*T1)//mass in kg
//from Table A-7
u1=214.07//internal energy at state 1 in kJ/kg @300K
u2=1113.52//internal energy at state 2 in kJ/kg @1400K
//from energy equation
Qout=140//heat output in kJ
Qin=Qout+m*(u2-u1);//heat input in kJ
printf(' (c) Heat input = %.0f kJ',Qin);

