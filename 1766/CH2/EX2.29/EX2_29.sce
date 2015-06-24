clc;funcprot(0);//Example 2.29
//Initilisation of Variables
l=0.25;....//length of ice box in m
b=0.4;....//breath of ice box in m
H=1;....//height of ice box in m
d=1000;....//density of ice box in kg
L=0.05;....//thickness of ice box in m
K=0.033;....//thermal conductivity of ice box in W/m*degrees celcius
Ta=25;....//outside temparature of ice box in degrees celcius
T=0;...//temparature of ice in degrees celcius
h=10;....//heat transfer coefficient of ice box in W/m^2*degrees celcius
D=330;....//heat of fusion in kJ/kg
//calculations
V=l*b*H;.....//volume of the box in m*3
m=V*d;....//mass of ice in kg
Qsupp=m*D;....//heat supplied to melt the ice completely in kJ
A=2*((l*H)+(b*H)+(l*b));....//total heat transfer area in m*2
R1=L/(K*A);....//resistance of conduction in degrees celcius/W
R2=1/(h*A);....//resistance of convection in degrees celcius/W
Q=(Ta-T)/(R1+R2);.....//heat transfer rate in W
Tm=(Qsupp*1000)/(Q*3600);....//time taken for melting in h
disp(Tm,"time taken for melting in h:")
