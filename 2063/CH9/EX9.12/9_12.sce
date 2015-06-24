clc
clear
//Input data
P1=1;//Pressure of air drawn by a two stage single acting reciprocating air compressor in bar
T1=293;//Initial temperature in K
P3=60;//Final pressure after the compression in bar
P2=10;//Pressure after compression in the LP cylinder in bar
T2=303;//Temperature after cooling in K
D=0.16;//Diameter of a cylinder in m
L=0.2;//Stroke length of the cylinder in m
n=1.3;//Polytropic index
N=300;//Operating speed of the compressor in rpm
R=287;//Gas constant in J/kg K

//Calculations
V1=(3.14*D^2*L)/4;//Volume of the LP cylinder in m^3
V2=(P1*V1*T2)/(T1*P2);//Volume of the HP cylinder in m^3
W=(n/(n-1))*(P1*10^5*V1*(((P2/P1)^((n-1)/n))-1)+(P2*10^5*V2*(((P3/P2)^((n-1)/n))-1)));//Work done by the compressor per working cycle in N m
P=(W*N)/(60*1000);//Power of the compressor in kW

//Output
printf('Power of the compressor when it runs at 300 rpm is %3.3f kW',P)
