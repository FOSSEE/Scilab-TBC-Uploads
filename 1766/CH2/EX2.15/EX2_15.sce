clc;funcprot(0);//Example 2.15
//Initilisation of Variables
d=0.03;....//diameter of uranium steel rod in m
qg=50000000;....//heat generated rate in W/m^2
Tw=120;....//surface temparature of uranium steel rod in degrees celcius
K=30;....//thermal conductivity of uranium steel rod in W/m*K 
//calculations
R=d/2;....//radius of uranium steel rod in m
Tmax=((qg*R^2)/(4*K))+Tw;....//maxium steel temparature inside the rod in degrees celcius
disp(Tmax,"maxium steel temparature inside the rod in degrees celcius:")
