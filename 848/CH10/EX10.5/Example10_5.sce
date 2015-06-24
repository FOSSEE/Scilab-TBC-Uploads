//clear//
//Caption:Finding output powers at output port of 2x2 coupler
//Example10.5
//page 350
clear;
clc;
close;
S = sqrt(1/2)*[1,%i;%i,1];//scattering matrix
Ein = [1;0];
Eout = S*Ein;
Pout1 = Eout(1)*conj(Eout(1));
Pout2 = Eout(2)*conj(Eout(2));
disp(Pout1,'Output power at port 1 Pout1 =')
disp(Pout2,'Output power at port 2 Pout2 =')
//Result
//Output power at port 1 Pout1 =  0.5  
//Output power at port 2 Pout2 =  0.5  
