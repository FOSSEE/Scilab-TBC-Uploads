clc;funcprot(0);//Example 2.8
//Initilisation of Variables
R=15*10^(-6);....//electrical resistance of a copper rod in ohm*m^-1
I=900;....//current condiucted by the copper resistance in A
r1=1;....//Radius of copper rod in cm
t1=5;.....//thickness of material in mm
K1=0.05;....//Thermal conductivity of a material in W/m*k
t2=1.8;...//thickness of plastic material in cm
K2=0.5;....//Thermal conductivity of plastic material in W/m*k
Ta=30;....//surrounding temparature in degrees celcius
h=15;...//convective heat transfer coeficient in W/m^2*k
L=1;...//length of the rod in m
//calculatons
Qg=I^2*R;.....//Heat generated in the copper rod due to flow of current in W/m
r3=0.33;...//
Rg=1/(2*%pi*r3*L*h);....//resistance for stady state condition in ohm*m^-1
Ts=(Qg*Rg)+Ta
disp(Ts,"Outer surface temparature of plastic insulation in degrees celcius:")
