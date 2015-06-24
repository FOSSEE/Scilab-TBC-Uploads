//clear//
//Caption:Program to find the characteristic impedance, the phase constant an the phase velocity
//Example11.2
//page344
clear;
clc;
close;
L = 0.25e-6; //0.25uH/m
C = 100e-12; //100pF/m
f = 600e06; //frequency f = 100MHz
W = 2*%pi*f; //angular frequency
Zo = sqrt(L/C); 
B = W*sqrt(L*C);
Vp = W/B;
disp(Zo,'Characteristic Impedance in ohms Zo =')
disp(B,'Phase constant in rad/m B=')
disp(Vp,'Phase velocity in m/s Vp=')
//Result
//Characteristic Impedance in ohms Zo =   
//     50.  
//Phase constant in rad/m B=   
//    18.849556  
//Phase velocity in m/s Vp=   
//    2.000D+08    
