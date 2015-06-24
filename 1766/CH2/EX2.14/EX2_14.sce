clc;funcprot(0);//Example 2.14
//Initilisation of Variables
t=0.03;....//thickness of chromium steel in m
qg=3000000;....//heat generated rate in W/m^2
Tw=450;....//surface temparature of steel bar in degrees celcius
K=24;....//thermal conductivity of chromium steel in W/m*K 
//calculations
Tmax=((qg*t^2)/(8*K))+Tw;....//maxium steel temparature within the steel bar in degrees celcius
disp(Tmax,"maxium steel temparature within the steel bar in degrees celcius:")
