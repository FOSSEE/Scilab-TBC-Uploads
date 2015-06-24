clc
clear
//Input data
r=15;//Compression ratio
Vs=0.01;//Stroke volume in m^3
P1=1;//Initial pressure in bar
T1=310;//Initial temperature in K
P3=65;//Pressure in constant pressure heat addition stroke in bar
Cp=1;//Specific heat of air at constant pressure in kJ/kg K
Cv=0.714;//Specific heat of air at constant volume in kJ/kg K
R=287;//Molar gas constant

//Calculations
r1=Cp/Cv;//Isentropic index
P2=P1*(r)^r1;//Pressure at the end of compression stroke in bar
a=P3/P2;//Pressure ratio
rho=1+((5/100)*(r-1))
V2=Vs/(r-1);//Volume at the end of compression stroke in m^3
V1=Vs+V2;//Initial volume in m^3
m=P1*10^5*V1/(R*T1);//Mass of air contained in the cylinder in kg
T2=T1*r^(r1-1);//Temperature at the end of compression stroke in K
a=P3/P2;//Pressure ratio
T3=T2*a;//Temperature at the end of constant volume heat addition in K
T4=T3*rho;//Temperature at the end of constant pressure heat addition in K
T5=T4/(r/rho)^(r1-1);//Temperature at the end of isentropic expansion in K
Qs=(Cv*(T3-T2)+Cp*(T4-T3))*m;//Heat supplied in kJ
Qr=m*Cv*(T5-T1);//Heat rejected in kJ
W=Qs-Qr;//Work done per cycle in kJ
n=(W/Qs)*100;//Efficiency of the cycle in percent
Mep=(W/Vs)/100;//Mean effective pressure in bar

//Output
printf('(1)Pressure ratio is %3.3f\n (2)Cut off ratio is %3.2f\n (3)Heat supplied per cycle is %3.0f kJ\n (4)Heat rejected per cycle is %3.2f kJ\n (5)Work done per cycle is %3.2f kJ\n (6)Thermal efficiency of the cycle is %3.0f percent\n (7)Mass of air contained in the cylinder is %3.4f kg\n (8)Mean effective pressure is %3.2f bar',a,rho,Qs,Qr,W,n,m,Mep)
