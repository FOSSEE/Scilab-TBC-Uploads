clc
clear
//Input data
V1=0.5;//Initial Volume before the commencement of compression in m^3
P1=1;//Initial pressure before the commencement of compression in bar
T1=300;//Initial temperature in K
P2=12;//Final pressure at the end of compression stroke in bar
Q=220;//Heat added during the constant volume process in kJ
r=1.4;//Isentropic constant for air
R=0.287;//Characteristic Gas constant in kJ/kg K
Cv=0.718;//Specific heat of mixture in kJ/kg K

//Calculations
r1=(P2/P1)^(1/r);//Compression ratio
T2=T1*(r1)^(r-1);//Final temperature after the end of compression stroke in K
V2=(P1*T2*V1)/(P2*T1);//Final volume after the end of compression stroke in m^3
m=(P1*10^5*V1)/(R*T1*1000);//Mass of air flowing in kg
T3=(Q/(m*Cv))+T2;//Temperature after constant volume heat addition in K
P3=(P2*T3)/T2;//Pressure after constant volume heat addition in K
V3=V2;//Volume at 3
P4=P3*(1/r1)^(r);//Pressure after isentropic expansion in bar
V4=V1;//Volume after isentropic expansion in m^3
T4=T3*(1/r1)^(r-1);//Temperature at the end of isentropic expansion in K

//Output
printf('(a)The pressures at 1 is %3.0fbar\n (b)Pressure at 2 is %3.0fbar\n (c)Pressure at 3 is %3.2fbar\n (d)Pressure at 4 is %3.2fbar\n (e)Temperature at 1 is %3.1fK\n (f)Temperature at 2 is %3.1fK\n (g)Temperature at 3 is %3.0fK\n (h)Temperature at 4 is %3.0fK\n (i)Volume at 1 is %3.0fm^3\n (j)Volume at 2 is %3.5fm^3\n (k)Volume at 3 is %3.5fm^3\n (l)Volume at 4 is %3.0fm^3',P1,P2,P3,P4,T1,T2,T3,T4,V1,V2,V3,V4)
