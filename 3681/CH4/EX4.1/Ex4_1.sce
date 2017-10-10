// Calculating the loss that will pass through copper bar to iron
clc;
disp('Example 4.1, Page No. = 4.3')
// Given Data
D = 12;// Diameter of copper bar in mm
t = 1.5;// Thickness of micanite tube in mm
p = 8;// Resistivity of macanite tube in ohm*meter
T = 25;// Temperature difference in degree celsius
L = 0.2;// Length of copper bar
// Calculation of loss.that will pass through copper bar to iron
S = %pi*(D+t)*10^(-3)*L;//Area of insulation in the path of heat flow
R =( p*t*10^(-3))/S;// Thermal resistance of micanite tube
Q_con= T/R;// Heat Dissipated
disp(Q_con,'Heat Dissipated(W)=');
//in book answer is 17.67 W.  The answers vary due to round off error
