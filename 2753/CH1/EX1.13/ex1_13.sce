//Example 1.13: 
clc;
clear;
close;
//given data :
e=1.6*10^-19;// electron charge in coulombs
k=1.38*10^-23;//Boltzmann constant in m^2-kg/s^2-K^-1
T=300;//in Kelvin
Vt=(k*T)/e;//in V
I=240;//in mA
eta=2;//
Ve=0.8;//in V
V=0.7;//in V
Id=I*exp((V-Ve)/(eta*Vt));//in mA
format('v',5)
disp(round(Id),"(i) Current is ,(mA)=")
Ir=(I/((exp(Ve/(eta*Vt)))-1))*10^6;//
format('v',4)
disp(round(Ir),"(ii) reverse saturation current is ,(nA)=")
//reverse saturation current is calculated wrong in the textbook
