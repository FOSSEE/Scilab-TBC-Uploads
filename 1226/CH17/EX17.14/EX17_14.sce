clc;funcprot(0);//EXAMPLE 17.14
// Initialisation of Variables
BP=14.7;........................//Brake power in kW
p1=0.9;.........................//Suction pressure in bar
etamech=0.8;....................//Mechanical efficiency
r=5;............................//Compression ratio
p3=24;..........................//maximum explosion pressure in bar
N=1000;.........................//Engine rpm
rld=1.5;........................//Ratio of length and stroke
ic=1.35;........................//Index of compression curve
ie=1.3;.........................//Index of expansion curve
k=0.5;..........................//Four stroke engine
//calculations
p2=(r^ic)*p1;......................//intermediate pressure (in bar) during compression
p4=p3/(r^ie);......................//Intermediate pressure (in bar) during expansion
pm=((((p3-r*p4)/(ie-1))-((p2-p1*r)/(ic-1)))*(10^5))/(r-1);...........//Mean effective pressure in N/m^2
pmb=pm/100000;........................................//Mean effective pressure in bar
IP=BP/etamech;........................................//Indicated power in kW
D=((IP*6*4)/(pmb*rld*(%pi)*N*k*10))^(1/3);............//Engine bore in m
L=rld*D;..............................................//Engine stroke in m
disp(D*1000,"Engine bore (in mm):")
disp(L*1000,"Engine stroke (in mm):")
