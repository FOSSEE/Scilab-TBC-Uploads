// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 13")
//A very long,10mm diameter(D) copper rod(thermal conductivity,k=370W/(m*K))is exposed to an enviroment at temprature,Tinf=20°C.
D=0.01;
k=370;
Tinf=20;
//The base temprature of the radius maintained at Tb=120°C.
Tb=120;
//The heat transfer coefficient between the rod and the surrounding air is h=10W/(m*K^2)
h=10;
//The rate of heat transfer for all finite lengths will be given by P/A=(4*pi*D)/(pi*D^2)
//Let P/A=X
disp("P/A in m^-1 is")
X=(4*%pi*D)/(%pi*D^2)
//m is defined as [(h*p)/(k*A)]^0.5 
disp("m in m^-1 is")
m=(h*X/k)^0.5
//Let Y=h/(m*k)
Y=h/(m*k)
//Let M=(h*P*k*A)^0.5
P=(%pi*D);//perimeter of the rod
A=(%pi*D^2)/4;//Area of the rod
disp("M in W/K is")
M=(h*P*k*A)^0.5
//thetab is the parameter that defines the base temprature
disp("thetab in °C is ")
thetab=Tb-Tinf
//Heat loss from the rod is defined as Q=(h*P*k*A)*thetab*{[(h/m*k)+tanh(m*L)]/[1+(h/m*k)*tanh(m*L)]}
disp("Heat loss from rod in Watt, for different value of length(in m) is ")
L=0.02//Length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
L=0.04//length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
L=0.08//length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
L=0.20//length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
L=0.40//length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
L=0.80//length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
L=1.00//length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
L=10.00//length of rod
Q=M*thetab*{[(Y)+tanh(m*L)]/[1+(Y)*tanh(m*L)]}
//For an infinitely long rod we use heat loss as ,Qinf=(h*P*k*A)^0.5*thetab
disp("For an infintely long rod heat loss in W is")
Qinf=(h*P*k*A)^0.5*thetab
disp("We see that since k is large there is significant difference  between the finite length and the infinte length cases")
disp("However when the length of the rod approaches 1m,the result become almost same." )









