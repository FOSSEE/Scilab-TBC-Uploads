//clear//
clear;
clc;

//Example 22.6
//Solution
rho_m = 62.2/18; //[mol/ft^3]
//kya = 0.025*Gy^0.7*Gx^0.25
H2ObySO2 = 2*0.98964/0.01036; 
//and
xb = 1/(H2ObySO2+1);
//The molal mass velocity of the feed gas Gm is
Gm_in = 200/29*(1/0.8); //[mol/ft^2-h]
SO2_in = Gm_in*0.2; //[mol/ft^2-h]
Air_in = Gm_in*0.8; //[mol/ft^2-h]
Air_out = Air_in; //[mol/ft^2-h]
SO2_out = Air_out*(0.005/(1-0.005)); //[mol/ft^2-h]
SO2_abs = SO2_in-SO2_out; //[mol/ft^2-h]
H2O_in = H2ObySO2*SO2_abs; //[mol/ft^2-h]
//Operating line
x = 0:6;
x = x/10^3;
A = x./(1-x);
B = H2O_in/Air_in*A+(0.005/0.995);
y = B./(B+1);
plot(x,y)
xgrid();
xlabel('x');
ylabel('y');
//legend('20C','30C','40C');
title('x vs y');
Gxbar = H2O_in*18.02+SO2_abs*64.1/2; //[lb/ft^2-h]
kxa = 0.131*Gxbar^0.82; //[mol/ft^3-h]
//The gas film coefficients are calculated for the bottom
//and the top of the tower:
//At bottom:
Gy_B = (Air_in*29)+(SO2_in*64.1); //[lb/ft^2-h]
kya_B = 0.025*Gy_B^0.7*Gx^0.25; //[mol/ft^3-h]
//At top:
Gy_T = (Air_out*29)+(SO2_out*64.1); //[lb/ft^2-h]
kya_T = 0.025*Gy_T^0.7*Gx^0.25; //[mol/ft^3-h]  
//Assuming 
yLbar = 0.82
C = kxa*yLbar/kya_B;
//a line from (yb,xb) with a slope of -C, gives
yi = 0.164;
yLbar = 0.818;
m = 20.1
Kya_prime = 1/(yLbar/kya_B+m/kxa); //[mol/ft^3-h]
//The fraction of the total resistance that is in the liquid is
Rf = m/kxa/(1/Kya_prime);
//For different values of y1
y1 =[0.2,0.15,0.1,0.05,0.02,0.005]';
delta_y1 = [0.103,0.084,0.062,0.034,0.015,0.005]';
y1i = [0.164,0.118,0.074,0.034,0.012,0.002]';
delta_yi = y1-y1i;
