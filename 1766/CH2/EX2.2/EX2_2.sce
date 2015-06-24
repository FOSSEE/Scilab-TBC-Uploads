clc;funcprot(0);//Example 2.2
//Initilisation of Variables
T1=1100;.........//inside temparature of furnance wall in degrees celcius
T3=30;.........//outside tempatarure of furnance wall in degrees celcius
L1=0.09;.........//thickness of fire clay slab in m
L2=0.45;.........//thickness of red brick slab in m
K2=0.8;.......//thermal conductivity of red brick slab in W/(m*K)
A=1;.....//area of slab in m^2
Alpha=0.3;.....//K1=0.3*(1+0.001*T);.........//thermal conductivity of fire clay slab in W/(m*K)
Beta=0.001;.....//K1=0.3*(1+0.001*T);.........//thermal conductivity of fire clay slab in W/(m*K)
//Calculations
Rb=L2/(K2*A);....//Resistance between T2 &Ta in degrees celcius/W
a=Rb*Alpha*(Beta/2);....//
b=-(Rb*Alpha*(Beta/2)*2*T1)-L1-(Rb*Alpha);....//
c=(T1^2*Rb*Alpha*(Beta/2))+(T3*L1)+(Alpha*T1*Rb);...//
T2=poly(0,'T2')
p=a*T2^2-b*T2-c;
z=roots (p)
disp(z)
////The Answer arraived in textbook is found to be wrong when calculated
