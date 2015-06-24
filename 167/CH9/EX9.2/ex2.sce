//ques2
//The Ideal Otto Cycle
clear
clc
//the temperature and pressure of air at the end of the isentropic compression process (state 2), using data from Table A–17
T1=290;//initial temp in K
u1=206.9;//initial internal energy in kJ/kg
vr1=676.1;//initial reduced volume
//Process 1-2 (isentropic compression of an ideal gas)
//vr2/vr1=v2/v1=1/r
r=8;//ratio
vr2=vr1/r;//reduced volume at state 2 
//using table corresponding to vr2
T2=652.4;//final temp in K
u2=475.11;//final internal energy in kJ/kg
P1=100;//initial pressure in kPa
P2=P1*T2/T1*r;//final pressure in kPa
//Process 2-3 (constant-volume heat addition)
Qin=800;//heat input in kJ/kg
u2=1275.11;// intenal energy at state 2 in kJ/kg
u3=Qin+u2;//internal energy at state 3 in kJ/kg
//using tables corresponding to u3
T3=1575.1;//temperature at state 3 in K
vr3=6.108;//reduced volume at state 3
printf('(a) T3,Temperature at state 3 = %.1f K \n',T3);
vr3=6.108;//reduced volume at state 3
P3=P2*(T3/T2)*1;//1 for v2/v3
printf('     Pressure P3 = %.3f MPa \n',P3/1000);

//(b)
vr3=r*vr3;
//now from table 
T4=795.6;//temp at state 4 in K
u4=588.74;//internal energy at state 4 in kJ/kg
//Process 4-1 (constant-volume heat rejection)
Qout=u4-u1;//heat output in kJ/kg
w=Qin-Qout;//work done in kJ/kg
printf(' (b) Net work done = %.2f kJ/kg \n',w);

//(c)
nth=w/Qin;//efficiency of heat engine
k=1.4;//constant
no=1-r^(1-k);//thermal efficiency
printf(' (c) The thermal efficiency of the cycle is determined from its definition = %.3f \n',nth);
printf('     Under the cold-air-standard assumptions thermal efficiency would be = %.3f \n',no);

//(d)
//The mean effective pressure is determined from its definition
R=0.287//gas constant for water
v1=R*T1/P1//specific volume at state 1
MEP=w/(v1*(1-1/r));//mean effective pressure in kPa
printf(' (d) Mean effective pressure = %.0f kPa \n',MEP);
