//Chapter 22, Problem 12
clc;
R=0.75                  //armature circuit resistance
Rf=125;                 //field resistance
Po=10e3;                //power in watt
V=250;                  //supply voltage
C=600;                  //iron, friction and windage losses in watt
I=Po/V;                 //load current
If=V/Rf;                //field current
Ia=If+I;                //armature current
n=(Po/(Po+(Ia^2*R)+(If*V)+C))*100;          //efficiency
printf("Efficiency = %f percent",n);
