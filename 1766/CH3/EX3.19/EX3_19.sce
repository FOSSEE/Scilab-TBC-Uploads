clc;funcprot(0);//Example 3.19
//Initilisation of Variables
L1=0.2;.....//Length of slab in m
L2=0.1;......//Breath of slab in m
Ti=225;...//Initial temparature of brick in degrees celcius
h=60;...//heat transfer coefficient on surface of the brick in W/m*K
Ta=25;...//Ambient air temparature in degrees celcius
t=3600;....//time for measuring temparature in s
K=0.7;.....//thermal conductivity of brick in W/m K
al=0.5*10^-6;.....//thermal diffucivity of brick in m^2/s
//calculations 
invBi1=(2*K)/(h*L1);....//inverse of biot number for Length of slab
Fo1=(al*t)/(L1/2)^2;.....//Fourier number for length of slab
teta1=0.8;.....//Value got from hesler chart for slab from 1/Bi=0.12 and Fo=0.18
invBi2=(2*K)/(h*L2);....//inverse of biot number for Length of slab
Fo2=(al*t)/(L2/2)^2;.....//Fourier number for length of slab
teta2=0.3;.....//Value got from hesler chart for slab from 1/Bi=0.28 and Fo=0.72
teta3=teta1*teta2;....//Realtion for dimentionless temparature for column
To=((Ti-Ta)*teta3)+Ta;.....//Center temparature of the column in degrees celcius
disp(To,"Center temparature of the column degrees celcius:")
