clc;funcprot(0);//Example 2.28
//Initilisation of Variables
L=0.02;....//thickness of wall in m
K=62;....//thermal conductivity of iron plate in W/m*degrees celcius
Tg=530;...//temparature of hot gas in degrees celcius
Ta=30;....//temparature of cool gas in degrees celcius
hg=100;....//heat transfer coefficient of hot gas in W/m^2*degrees celcius
ha=20;....//heat transfer coefficient of cool gas in W/m^2*degrees celcius
A=1;...//area of wall in m^2
//calculations
R1=1/(hg*A);....//resistance of convection of hot gas side in degrees celcius/W
R2=L/(K*A);....//resistance of conduction in degrees celcius/W
R3=1/(ha*A);....//resistance of convection of cool gas side in degrees celcius/W
q=(Tg-Ta)/(R1+R2+R3);.....//Heat transfer per unit area in W
T1=Tg-(q*R1);....//temparature of wall on hot gas side in degrees celcius
T2=Ta+(q*R3);....//temparature of wall on cool gas side in degrees celcius
disp(T1,"temparature of wall on hot gas side in degrees celcius(T1):")
disp(T2,"temparature of wall on cool gas side in degrees celcius(T2):")
