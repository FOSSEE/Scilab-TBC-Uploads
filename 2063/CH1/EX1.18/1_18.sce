clc
clear
//Input data
r=15;//Compression Ratio of a diesel engine
P1=1;//Operating Pressure of a diesel engine in bar
r1=1.4;//Isentropic constant
V1=15;//Volume at the start of compression stroke in m^3
V3=1.8;//Volume at the end of constant Pressure heat addition in m^3
V4=V1;//Volume at the end of Isentropic expansion stroke in m^3
V2=1;//Volume at the end of isentropic compression stroke in m^3
Vs=V1-V2;//Swept volume in m^3

//Calculations
P2=P1*(r)^r1;//Pressure at the end of Isentropic compression of air
P3=P2;//Pressure at the end of constant pressure heat addition in bar
P4=P3*(V3/V4)^r1;//Pressure at the end of Isentropic expansion stroke in bar
Pm=(V2/Vs)*(P2*((V3/V2)-1)+(P3*(V3/V2)-P4*(V4/V2))/(r1-1)-(P2-P1*(V1/V2))/(r1-1));//Mean effective pressure in bar
 
//Output
printf('Mean effective pressure of the cycle is %3.2f bar',Pm)
