//clear//
//Caption:Program to find the total loss in lossy lines
//Example11.6
//page352-353
clc;
close;
L1 = 0.2*10;//loss(dB) in first line of length =10 m
L2 = 0.1*15;//loss(dB) in second line of length =15m
R = 0.3; //reflection coefficient 
Pi = 100e-03;//input power in milli watts
Lj = 10*log10(1/(1-abs(R)^2));
Lt = L1+L2+Lj; 
Pout = Pi*(10^(-Lt/10));
disp(Lt,'The total loss of the link in dB is Lt=')
disp(Pout*1000,'The output power will be in milli watss Pout =')
//Result
//The total loss of the link in dB is Lt=   
//     3.9095861  
//The output power will be in milli watss Pout =   
//    40.648207 
