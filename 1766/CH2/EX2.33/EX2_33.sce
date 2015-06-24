clc;funcprot(0);//Example 2.33
//Initilisation of Variables
R=10^-3;....//radius of solid sphere in m
qg=2*10^9;....//heat genarated by elecric currentin wire at constant rate in W/m^2
K=25;....//thermal conductivity of solid sphere in W/m*degrees celcius 
//calculations
T=(qg*R^2)/(4*K);......//increase in center line temparature in degrees celcius 
disp(T,"increase in center line temparature in degrees celcius")
