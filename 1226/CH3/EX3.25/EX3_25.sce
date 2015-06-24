clc;funcprot(0);//EXAMPLE 3.25
// Initialisation of Variables
D=0.25;.................//Engine bore in m
L=0.3;.............//Engine stroke in m
p1=1;................//Initial pressure in bar
N=3;...............//No of cycles per second
p3=60;................//Maximum pressure in bar
t1=303;..............//Initial temperature in K
co=4;................//Cut off percentage
r=9;..................//Compression ratio
R=287;.................//gas constant in J/kg
cv=0.71;...............//Specific heat at constant volume in kJ/kgK
cp=1.0;.................//Specific heat at constant pressure in kJ/kgK
ga=1.4;...............//Ratio of specific heats
//Calculations
p4=p3;
Vs=(%pi/4)*D*D*L;.............//Stroke volume in m^3
Vc=Vs/(r-1);..................//Clearance volume in m^3
rho=((r-1)*(co/100))+1;................//Cut off ratio
v1=Vc+Vs;.................//Volume after isochoric compression in m^3
p2=p1*(r^ga);................//Pressure after adiabatic compression in bar
t2=t1*(r^(ga-1));..............//Temperature after adiabatic expansion in K
t3=(p3*t2)/p2;..............//Temperature after isochoric compression in K
t4=t3*rho;.....................//Temperature after isobaric expansion in K
t5=t4*((rho/r)^(ga-1));.........//Temperature after adiabatic expansion in K
p5=p4*(rho/r)^ga;...............//Pressure after adiabatic expansion in bar
Qs=(cv*(t3-t2)+cp*(t4-t3));.....//Heat supplied in kJ/kg
Qr=cv*(t5-t1);...................//Heat rejected in kJ/kg
etast=1-(Qr/Qs);.................//Air standard efficiency
disp(etast*100,"Air standard efficiency in %:")
m=(p1*v1*10^5)/(R*t1);...............//Mass of air in cycle
W=m*(Qs-Qr);....................//Work done per cycle in kJ
P=W*N;............................//Power developed in kW
disp(P,"Power developed in kW")
