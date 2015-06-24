clc;funcprot(0);//Example 2.13
//Initilisation of Variables
Ta=30;.........//surrounding air temparature of degree celcius
Tb=400;.....//surface temparature of cylinder in degrees celcius
ri=7;.......//inner radius of cylinder in cm
ro=10;......//outer radius of cylinder in cm
t=0.3;....//thickness of fin in m
K=175;....//thermal conductivity of fin in W/m*k
h=40 ;....//Convective heat transfer coefficient of fin in W/m^2*K
//Calculations
L=ro-ri;....//Length of the fin in m
Lc=L+(t/2);....//critical length of the fin in cm
r2c=ri+Lc;....//critical radius of fin in m
Am=Lc*t;...//Mean Area offin in m^2
E=L^(3/2)*(h/K*Am)^(3/2);....//
n=90;....//fin efficiency From the graph in W/m^2*K
As=2*%pi*[(ro^2-ri^2)+(t*ro)]*10^-4;....//surface area of fin in m^2
Q=(n/100)*As*h*(Tb-Ta);...//heat transfer from the fin in W
disp(Q,"heat transfer from the fin in W:")
