clc;funcprot(0);//Example 3.12
//Initilisation of Variables
Ti=700;...//Initial temparature of carbon steel rod in degrees celcius
Ta=30;...//Temparature of coolent in degrees celcius
Do=0.2;....//diameter of rod in m
h=200;...//heat transfer coefficient on surface of the rod in W/m*K
Tm=100;....//center line temparature in degrees celcius
al=1.474*10^-5;.....//thermal diffucivity of slab in m^2/s
K=54;.....//thermal conductivity of copper slab in W/m K
//calculations
ro=Do/2;....//Radius of rod in m
Bi=(h*ro)/(2*K);....//biot number 
Fo=3.6;.....//Fourier number from got by heisler chart by tetao/tetai=0.104 
t=(Fo*ro^2)/al;.......//time taken for the center line temparature in s
disp(t,"time taken for the center line temparature in s:")
