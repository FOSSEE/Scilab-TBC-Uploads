//clear//
clear;
clc;

//Exapmle 21.1
//Given
yA = 0.20;
yAi = 0.10;

//Solution
//(a)
//Let A = Dv*rho_M/BT
A = 1; //assumed

//Using Eq.(21.19), for euilmolal diffusion,
JA = A*(yA-yAi);
//Form Eq.(21.24), for one way diffusion,
NA = A*log((1-yAi)/(1-yA));
NAbyJA = NA/JA;
disp('In this case the transfer rate with one-way diffusion is',NAbyJA-1,'percent greater than that with equimolal diffusion');

//(b) 
//Whwn, b = BT/2
A = A*2;
yA = 1-exp(NA/2)*(1-yA)
disp(yA,'The value of yA halfway through the layer for one-way diffusion is');
