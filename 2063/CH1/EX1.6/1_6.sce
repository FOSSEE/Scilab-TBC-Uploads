clc
clear
//Input data
V1=0.6;//Initial volume of an engine working on otto cycle in m^3
P1=1;//Initial pressure in bar
T1=308;//Initial temperature in K
P2=10;//Pressure at the end of compression stroke in bar
Q=210;//Heat added during constant heat process in kJ
r=1.4;//Isentropic constant of air

//Calculations
r1=(P2/P1)^(1/r);//Compression ratio
V2=V1/r1;//Clearance volume in m^3
C=(V2/(V1-V2))*100;//Percentage clearance in percent
na=(1-(1/r1)^(r-1))*100;//Air standard efficiency in percent
W=Q*(na/100);//Work done per cycle in kJ

//Output
printf('(a)Clearance volume as percentage of stroke volume is %3.2f percent\n (b)Compression ratio is %3.2f\n (c)Air standard efficiency is %3.1f percent\n (d)Work done per cycle is %3.2f kJ',C,r1,na,W)
