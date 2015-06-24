clc;funcprot(0);//EXAMPLE 3.26
// Initialisation of Variables
p1=1;................//Initial pressure in bar
t1=363;.............//Initial temperature in K
r=9;.................//Compression ratio
p3=68;...............//Max pressure
p4=p3;
Qs=1750;..............//Total heat supplied
ga=1.4;...............//Ratio of specific heats
R=287;................//Gas constant in kJ/kgK
cv=0.71;..............//Specific heat at constant volume in kJ/kgK
cp=1;................//Specific heat at constant pressure in kJ/kgK
//Calculations
p2=p1*((r)^ga);............//Pressure at the end of adiabatic compression in bar
t2=t1*((r)^(ga-1));..........//Temperature at the end of adiabatic compression in K
t3=t2*(p3/p2);............//Temperature at the end of isochoric compression in K
Qv=cv*(t3-t2);.............//Heat added at constant volume in kJ/kg
Qp=Qs-Qv;.....................//Heat added at constant pressure in kJ/kg
t4=(Qp/cp)+t3;................//Temperature at the end of isobaric expansion in kJ/kg
rho=t4/t3;.....................//Cut off ratio
p5=p4*((rho/r)^ga);................//Pressure at the end of adiabatic expansion in kJ/kg
t5=t4*((rho/r)^(ga-1));...........//Temperature at the end of adiabatic expansion in kJ/kg
printf("Temperature after adiabatic compression: %f K\n\n",t2)
printf("Pressure after adiabatic compression: %f bar\n\n",p2)
printf("Temperature after isochoric compression: %f K\n\n",t3)
printf("Pressure after isochoric compression: %f bar\n\n",p3)
printf("Temperature after isobaric expansion: %f K\n\n",t4)
printf("Pressure after isobaric expansion: %f bar\n\n",p4)
printf("Temperature after adiabatic expansion: %f K\n\n",t5)
printf("Pressure after adiabatic expansion: %f bar\n\n",p5)
Qr=cv*(t5-t1);....................//Heat rejected in kJ
etast=1-(Qr/Qs);.................//Air standard efficiency
disp(etast*100,"Air standard efficiency in %:")
pm=(1/(r-1))*[(68*(rho-1))+(((p4*rho)-(p5*r))/(ga-1))-((p2-r)/(ga-1))];................//Mean effective pressure in bar
disp(pm,"Mean effective pressure in bar:")

