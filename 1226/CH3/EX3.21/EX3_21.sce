clc;funcprot(0);//EXAMPLE 3.21
// Initialisation of Variables
D=0.2;.................//Engine bore in m
L=0.3;.............//Engine stroke in m
p1=1;................//Initial pressure in bar
N=380;.................//No of working cycles per min
t1=300;..............//Initial temperature in K
co=8;................//Cut off percentage
r=15;..................//Compression ratio
R=287;.................//gas constant in J/kg
ga=1.4;................//Ratio of specific heats
//Calculations
Vs=(%pi/4)*D*D*L;.............//Stroke volume in m
v1=(r/(r-1))*Vs;................//Volume at the end of isochoric compression in m^3
m=(p1*v1*10^5)/(R*t1);................//Mass of air in cylinder in kg/cycle
p2=p1*(r^ga);.......................//Pressure at the end of isentropic compression in bar
t2=t1*(r^(ga-1));....................//Temperature at the end of isentropic compression in K
v2=Vs/(r-1);..................//Volume at the end of isentropic compressionin m^3
p3=p2;
rho=((r-1)*(co/100))+1;................//Cut off ratio
v3=rho*v2;.......................//Volume at the end of isobaric expansion in m^3
t3=t2*(v3/v2);..................//Temperature at the end of isobaric expansion in K
p4=((rho/r)^ga)*p3;..............//Pressure at the end of adiabatic expansion in bar
t4=((rho/r)^(ga-1))*t3;..............//Temperature at the end of adiabatic expansion in K
v4=v1;
printf("Temperature after adiabatic compression: %f K\n\n",t2)
printf("Pressure after adiabatic compression: %f bar\n\n",p2)
printf("Volume after adiabatic compression: %f m^3\n\n",v2)
printf("Temperature after isobaric compression: %f K\n\n",t3)
printf("Pressure after isobaric compression: %f bar\n\n",p3)
printf("Volume after isobaric compression: %f m^3\n\n",v3)
printf("Temperature after adiabatic expansion: %f K\n\n",t4)
printf("Pressure after adiabatic expansion: %f bar\n\n",p4)
printf("Volume after adiabatic expansion: %f m^3\n\n",v4)
etad=1-((((rho^ga)-1)/(rho-1))*(1/(ga*(r^(ga-1)))));..................//Efficiency of diesel engine
disp(etad*100,"Efficiency of diesel engine in %:")
pm=p1*(r^ga)*[ga*(rho-1)-((r^(1-ga))*((rho^ga)-1))]*(1/(ga-1))*1/(r-1);.......//Mean effective pressure 
disp(pm,"Mean effective pressure :")
Wdc=(pm*Vs*10^5)/1000;..................//Work done per cycle in kJ/cycle
P=(Wdc*N)/60;...........................//Power developed in kW
disp(P,"Power developed in kW:")

