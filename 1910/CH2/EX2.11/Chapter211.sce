// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 11")
//An electrical resistance wire 2.5mm or 2.5*10^-3m in diameter(D) and L=0.5m long has a measured voltage drop of E=25V for a current flow of I=40A.
D=2.5*10^-3;
I=40;
E=25;
L=0.5;
ro=D/2;//ro is radius of wire
//The thermal conductivity(k) of wire material is 24W/(m*K) 
k=24;
//The rate of generation of thermal energy per unit volume is given by qG=(E*I)/(L*%pi*D^2/4)
disp("The rate of heat generation of thermal energy in W/m^3 is")
qG=(E*I)/(L*%pi*D^2/4)
//The temprature at the centre is given by To=Tw+((qG*ro^2)/(4*k)) where Tw=650K is surface temprature 
Tw=650;
disp("The temprature of wire at the centre in K is ")
To=Tw+((qG*ro^2)/(4*k))//Note:The answer in the book is incorrect(value of D has been put instead of ro)















