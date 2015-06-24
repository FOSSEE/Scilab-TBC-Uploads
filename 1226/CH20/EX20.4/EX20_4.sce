clc;funcprot(0);//EXAMPLE 20.4
// Initialisation of Variables
p1=1;........//Suction pressure in bar
t1=293;.......//Suction temperature in K
p2=6;..........//Discharge pressure in bar
t2=453;.......//Discharge temperature in K
N=1200;.........//Compressor rpm
Ps=6.25;........//Shaft power in kW
ma=1.7;........//Mass of air delivered in kg/min
D=0.14;......//Engine bore in m
L=0.10;.......//Engine stroke in m
R=287;..........//Gas constant in kJ/kgK
//Calculations
Vd=(%pi/4)*D*D*L*N;.........//Displlacement volume in m^3/min
FAD=ma*R*t1/(p1*10^5);........//Free air delivered
etav=FAD/Vd;.....//Volumetric efficiency 
disp(etav*100,"Volumetric Efficiency in %:")
n=1/(1-((log(t2/t1))/(log(p2/p1))));........//Index of compression
IP=(n/(n-1))*(ma/60)*(R/1000)*t1*(((p2/p1)^((n-1)/n))-1);..........//Indicated power in kW
disp(IP,"Indicated power in kW:")
Piso=((ma/60)*(R/1000)*t1*(log(p2/p1)));..........//Isothermal power
etaiso=Piso/IP;..............//Isothermal efficiency
disp(etaiso*100,"Isothermal efficiency in %:")
etamech=IP/Ps;...........//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency in %:")
etao=Piso/Ps;........//Overall efficiency
disp(etao*100,"Overall efficiency in %:")

