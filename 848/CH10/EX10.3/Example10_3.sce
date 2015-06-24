//clear//
//Caption:Program to find coupling ratio, Excess loss, Insertion loss, Return loss of 2x2 Fiber coupler
//Example10.3
//page 348
clear;
clc;
close;
P0 = 200e-06; //input optical power level in watts
P1 = 90e-06; //output power at port 1
P2 = 85e-06; //output power at port 2
P3 = 6.3e-09; //output power at port 3
Coupling_ratio = (P2/(P1+P2))*100;
Excess_loss = 10*log10(P0/(P1+P2));
Insertion_loss_0_1 = 10*log10(P0/P1);
Insertion_loss_0_2 = 10*log10(P0/P2);
Return_loss = 10*log10(P3/P0);
disp(Coupling_ratio,'Coupling ratio')
disp(Excess_loss,'Excess loss in dB')
disp(Insertion_loss_0_1,'Insertion loss(port 0 to port 1) in dB')
disp(Insertion_loss_0_2,'Insertion loss(port 0 to port 2) in dB')
disp(Return_loss,'Retunr loss in dB')
//Result
// Coupling ratio   
//    48.571429   
// Excess loss in dB   
//     0.5799195  
// Insertion loss(port 0 to port 1) in dB   
//     3.4678749  
// Insertion loss(port 0 to port 2) in dB   
//     3.7161107  
// Retunr loss in dB   
//   - 45.016894   
