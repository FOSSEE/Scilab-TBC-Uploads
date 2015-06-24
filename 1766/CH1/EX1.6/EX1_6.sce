clc;funcprot(0);//Example 1.6
//Initilisation of Variables
b=0.8;..........//broad of a steel plate in m
h=0.4;..........//height of a steel plate in m
L=3*10^-3;........//thickness of a steel plate in m
K=45;.........//Thermal conductivity of steel plate in W/(m*K)
t1=200;.......//Temparature of steel plate on one side in degree celsius
t2=150;......//Temparature of steelplate on another side in degree celsius
//Calculations
A=(b*h);......//area of a steel plate in m^2
Q=(K*A*(t1-t2))/L;....//rate of heat transfer through plate in W
disp(Q/1000,"rate of heat transfer through plate in kW:")

