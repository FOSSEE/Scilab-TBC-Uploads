clc
clear
//Input data
V1=0.53;//Volume of cylinder of an engine working on Otto cycle in m^3
V2=0.1;//Clearance volume in m^3
Q=210;//Heat supplied during constant volume in kJ
r=1.4;//Isentropic ratio

//Calculations
r1=V1/V2;//Compression ratio
n=(1-(1/r1)^(r-1))*100;//Otto cycle efficiency in percentage
W=Q*(n/100);//Work done per cycle in kJ
P=W/((V1-V2)*100);//Mean effective pressure in bar

//Output data
printf('Mean effective pressure is %3.3f bar',P)
