// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 5")
//A nickel wire of length(L)=0.1m,Diameter(D)=1mm or .001m 
//Submerged horizontally in water at pressure=1 atm(101kPa) requires current,I=150A at voltage ,E=2.2V to maintain wire at temprature(T1)=110°C
L=0.1;
T1=110;
D=0.001;
I=150;
E=2.2;
//Area(A)=[%pi*D*L]
A=%pi*D*L;
//The saturation temprature of water at one atmospheric pressure(101kPa) is T2=100°C.
T2=100;
//We can write from energy balance E*I=h*A*(T1-T2),we can find heat transfer coefficient from it.
//h is heat transfer coefficient
disp("Heat transfer coefficient in W/m^2 is")
h=(E*I)/(A*(T1-T2))








