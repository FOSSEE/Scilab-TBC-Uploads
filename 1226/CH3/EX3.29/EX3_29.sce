clc;funcprot(0);//EXAMPLE 3.29
// Initialisation of Variables
D=0.25;.............//Engine bore in m
L=0.4;..............//Engine stroke in m
t1=303;.............//Initial temperature in K
R=287;...............//Gas constant in kJ/kgK
p1=1;...............//Initial pressure in bar
N=8;................//No of working cycles per sec
cv=0.71;.............//Specific heat at constant volume in kJ/kgK
cp=1;.................//Specific heat at constant pressure in kJ/kgK
n=1.25;.............//Adiabatic index
rc=9;...............//Compression ratio
re=5;...............//Expansion ratio
rqptqe=2;...........//Ratio of heat liberated at constant pressure to heat liberated at constant volume
//Calculations
p2=p1*(rc^n);.......................//Pressure at the end of adiabatic compression in bar
t2=t1*(rc^(n-1));...................//Temperature at the end of adiabatic compression in K
rho=rc/re;..........................//Cut off ratio
t3=(2*cv*t2)/((2*cv)-(cp*(rho-1)));...............//Temperature at the end of isochoric compression in K
p3=p2*(t3/t2);....................................//Pressure at the end of isochoric compression in bar
p4=p3;t4=rho*t3;.................................//Temperature and pressure at the end of isobaric process
p5=p4*(1/(re^n));.................................//Pressure at the end of adiabatic expansion in bar
t5=t4*(1/(re^(n-1)));.............................//Temperature at the end of adiabatic expansion in K
pm=(1/(rc-1))*[(p3*(rho-1))+(((p4*rho)-(p5*rc))/(n-1))-((p2-(p1*rc))/(n-1))];...............//Mean effective pressure 
printf("Temperature after adiabatic compression: %f K\n\n",t2)
printf("Pressure after adiabatic compression: %f bar\n\n",p2)
printf("Temperature after isochoric compression: %f K\n\n",t3)
printf("Pressure after isochoric compression: %f bar\n\n",p3)
printf("Temperature after isobaric expansion: %f K\n\n",t4)
printf("Pressure after isobaric expansion: %f bar\n\n",p4)
printf("Temperature after adiabatic expansion: %f K\n\n",t5)
printf("Pressure after adiabatic expansion: %f bar\n\n",p5)
disp(pm,"Mean effective pressure in bar:")
Vs=(%pi/4)*D*D*L;....................//Swept volume in m^3
W=(pm*(10^5)*Vs)/1000;.................//Work done per cycle in kJ
m=(p1*(10^5)*(rc/(rc-1))*Vs)/(R*t1);.....................//Mass of air per cycle in kg
Qs=m*[cv*(t3-t2)+cp*(t4-t3)];.....................//Heat supplied per cycle in kJ
eta=W/Qs;....................//Engine efficiency
disp(eta*100,"Engine efficiency in %:")
P=W*N;.................//Power of the engine in kW
disp(P,"Power of the engine in kW:")
