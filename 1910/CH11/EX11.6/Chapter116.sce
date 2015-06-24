// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 11, Example 6")
//Two rectangles length,L=1.5m by breadth,B=3.0m are parallel and directly opposed.
L=1.5;
B=3;
//They are 3m apart
//Temprature(T1) of surface 1 is 127°C or 400K and temprature(T2) of surface 2 is 327°C or 600K 
T1=400;
T2=600;
//Area (A) is the product of L and B
A1=L*B;
//Stefan -Boltzman constant(sigma)=5.67*10^-8 W/(m^2*K^4)
sigma=5.67*10^-8;
//From the graph of radiation shape factor b/w parallel rectangles F12=0.11
F12=0.11;//View factor
//The rate of heat transfer is given by Q=A1*F12*sigma*(T1^4-T2^4)
disp("The rate of heat transfer is given by Q=A1*F12*sigma*(T1^4-T2^4) in W")
Q=A1*F12*sigma*(T1^4-T2^4)
disp("Here minus sign indicates that the net heat transfer is from surface2 to surface1")
//Surface1 recieves energy only from surface 2,since the surrounding is at 0K.
//Therefore Q1=A1*Eb1-A2*F21*Eb2
//This implies Q1 can also be written as A1*sigma*(T1^4-F12*T2^4)
//From reciprocity theorem F21=F12 (since A1=A2)
F21=F12;//view factor
disp("The net rate of energy loss from the surface at 127°C if the surrounding other than the two surfaces act as black body at 0K in W" )
Q1=A1*sigma*(T1^4-F12*T2^4)
//In the case when surrounding is at temprature, Ts=300K ,the energy recieved from the surrounding by the surface 1 has to be considered.
Ts=300;
//Applying summation rule of view factors F11+F12+F1s=1
F11=0;//view factor
disp("The view factor of surface 1 with respect to surrounding is")
F1s=1-F11-F12
//subscript s denotes the surroundings
//Q1=A1*Eb1-A2*F21*Eb2-As*Fs1*Ebs
//With the help of reciprocity theorem A2*F21=A1*F12 , As*Fs1=A1*F1s
//Therefore we can write Q1=A1*sigma*(T1^4-F12*T2^4-F1s*Ts^4)
disp("The net rate of energy loss from the surface at 127°C if the surrounding other than the two surfaces act as black body at 300K in W ")
Q1=A1*sigma*(T1^4-F12*T2^4-F1s*Ts^4)




















