clc;funcprot(0);//EXAMPLE 20.34
// Initialisation of Variables
D=0.0635;.......//Engine bore in m
L=0.114;.........//Engine stroke in m
p1=6.3;..........//Supply pressure in bar
t1=273+24;.........//Supply temperature in K
p4=1.013;..........//Exhaust pressure in bar
cv=0.05;............//Clearance volume is 5% of the swept volume
cr=0.5;..........//Cut off ratio
n=1.3;...........//Adiabatic index
R=287;...............//gas constant in kJ/kgK
N=300;.............//Engine rpm
ga=1.4;...........//Ratio of specific heats
//Calculations
Vs=(%pi*D*D*L)/4;........//Swept volume in m^3
Vc=cv*Vs;..........//Clearance volume in m^3
v6=Vc;v5=v6;
v1=(Vs/2)+Vc;v2=Vs+Vc;v3=v2;p3=p4;v4=v5+(cv*Vs);
p2=p1*((v1/v2)^n);.......//Pressure at the end of expansion
t2=t1*((v1/v2)^(n-1));........//Temperature at the end of expansion in K
disp(t2,"Temperature at the end of expansion in K:")
p5=p4*((v4/v5)^n);
w=((p1*(v1-v6))+(((p1*v1)-(p2*v2))/(n-1))-(p3*(v3-v4))-(((p5*v5)-(p4*v4))/(n-1)))*10^5;.......//Workk done per cycle in Nm
IP=(w*N)/(60*1000);..........//Indicated power in kW
disp(IP,"Indicated power of the motor in kW:")
t3=t2*((p3/p2)^((ga-1)/ga));
t4=t3;m4=(p4*v4*10^5)/(R*t4);m1=(p1*v1*10^5)/(R*t1);
ma=(m1-m4)*N;..........//Mass of air supplied per min
disp(ma,"Mass of air supplied per min in kg:")
