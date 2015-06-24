clc
clear
//Input data
r=18;//Compression ratio of diesel cycle
Q=2000;//Heat added in kJ/kg
T1=300;//Lowest temperature in the cycle in K
p1=1;//Lowest pressure in the cycle in bar
Cp=1;//Specific heat of air at constant pressure in kJ/kg K
Cv=0.714;//Specific heat of air at constant volume in kJ/kg K

//Calculations
r1=Cp/Cv;//Isentropic ratio
v1=((1-Cv)*T1)/(p1*10^5);//Initial volume at point 1 in the graph in m^3/kg
v2=v1/r;//Volume at point 2 in m^3/kg
p2=p1*(v1/v2)^(r1);//Pressure at point 2 in bar
T2=T1*(v1/v2)^(r1-1);//Temperature at point 2 in K
T3=(Q/Cp)+T2;//Temperature at point 3 in K
v3=v2*(T3/T2);//Volume at point 3 in K
v4=v1;//Since Constant volume heat rejection in m^3/kg
T4=T3/(v4/v3)^(r1-1);//Temperature at point 4 in K for isentropic expansion
p4=p1*(T4/T1);//Pressure at point 4 in bar

//Output
printf('(a)Pressure at point 1 in the cycle is %3.0f bar\n (b)Pressure at point 2 & 3 is %3.1f bar\n (c)Pressure at point 4 is %3.2f bar\n (d)Temperature at point 1 is %3.0f K\n (e)Temperature at point 2 is %3.0f K\n (f)Temperature at point 3 is %3.0f K\n (g)Temperature at point 4 is %3.0f K',p1,p2,p4,T1,T2,T3,T4) 
