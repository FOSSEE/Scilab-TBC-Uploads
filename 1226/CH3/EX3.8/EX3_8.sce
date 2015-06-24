clc;funcprot(0);//EXAMPLE 3.8
// Initialisation of Variables
D=0.25;......................//Engine bore in m
L=0.375;...................//Engine stroke in m
Vc=0.00263;................//Clearence volume in m^3
p1=1;..................//Initial pressure in bar
t1=323;...................//Initial temperature in K
p3=25;....................//Max pressure in bar
ga=1.4;....................//Ratio of specific heats
//Calculations
Vs=(%pi/4)*D*D*L;................//Swept volume in m^3
r=round((Vs+Vc)/Vc);..........................//Compression ratio
etaotto=1-(1/(r^(ga-1)));..................//Air standard efficiency of otto cycle
disp(etaotto*100,"The air standard efficiency of otto cycle in %:")
p2=p1*((r)^ga);
rp=p3/p2;..........................//Pressure ratio
pm=(p1*r*((r^(ga-1))-1)*(rp-1))/((ga-1)*(r-1));................//Mean effective pressure in bar
disp(pm,"Mean effective pressure in bar:")
