clc;funcprot(0);//EXAMPLE 3.3
// Initialisation of Variables
p1=18;..................//Maximum pressure in bar
t1=410+273;.............//Maximum temperature in Kelvin
ric=6;.....................//Ratio of isentropic compression
rie=1.5;.................//Ratio of isothermal expansion
v1=0.18;..................//Volume of air at the beginning of expansion
ga=1.4;...................//Degree of freedom of gas
R=287;.....................//Gas constant in J/kgK
nc=210;..................//no of working cycles
//Calculations

t4=t1/(ric^(ga-1));.............//Min temp in K
t3=t4;
p4=p1/(ric^ga);..................//Min pressure in bar
p2=p1/rie;.......................//pressure of gas before isentropic expansion in bar
p3=p2*((1/6)^ga);.................//Pressure of gas after isentropic expansion in bar
printf("p1=%f bar \np2=%f bar \np3=%f bar \np4=%f bar \nt1=t2=%f Kelvin \nt3=t4=%f Kelvin \n",p1,p2,p3,p4,t1,t3)
dels=(p1*10^5*v1*log(rie))/(1000*t1);....................//Change in entropy
disp(dels,"Change in entropy in kJ/K:")
qs=t1*dels;.......................//Heat supplied in kJ
Qr=t4*dels;.......................//Heat rejected in kJ
eta=(qs-Qr)/qs;............//Efficiency of the cycle
v3byv1=ric*rie;Vs=(v3byv1-1)*v1;.................//Stroke volume
pm=((qs-Qr)*10^3)/(Vs*10^5);........//Mean effective pressure of the cycle in bar
disp(pm,"Mean effective pressure of the cycle in bar:")
P=(qs-Qr)*(nc/60);.........................//Power of engine
disp(P,"Mean effective pressure of the cycle in bar:")
