clc;funcprot(0);//Example 2.26
//Initilisation of Variables
L=0.2;....//thickness of the slab in m
Ta=30;....//slab surface temparature in degrees celcius
Tb=110;....//other surface temparature in degrees celcius
Kc=390;....//thermal conductivity of pure copper in W/m*degrees celcius
Ka=200;....//thermal conductivity of pure aluminium in W/m*degrees celcius
Ks=50;....//thermal conductivity of pure steel in W/m*degrees celcius
A=1;...//area of wall in m^2
//calculations
Qc=((Tb-Ta)*Kc*A)/L;...//heat loss across an copper slab in W
Qa=((Tb-Ta)*Ka*A)/L;...//heat loss across an aluminium slab in W
Qs=((Tb-Ta)*Ks*A)/L;...//heat loss across an steel slab in W
disp(Qc/1000,"heat loss across an copper slab in W:")
disp(Qa/1000,"heat loss across an copper aluminium in W:")
disp(Qs/1000,"heat loss across an steel slab in W:")
