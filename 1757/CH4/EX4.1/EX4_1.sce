//Example 4.1 // For an op-amp circuit find a) closed loop gain Acl b) input impedance Zin c) output impedance Zo
clc ;
clear ;
close ;
ro = 85 ; // ohm
A = 150*10^3 ; // ohm
R2 = 350*10^3 ; // ohm  // Feedback resistance
R1 = 10*10^3 ; // ohm  // Input resistance

// a) closed loop gain
// ACL = abs(Vo/Vin) = abs(R2/R1)
ACL = abs(R2/R1) ;
disp('  closed loop gain of an op-amp is = '+string(ACL)+'  '); // 1/beta = ACL
beta = (1/ACL) ;

// b) the input impedance Zin
Zin = R1 ;
disp('  the input impedance Zin = '+string(Zin)+' ohm ');

// c0 the output impedance Z0
Z0 = (ro)/(1+(beta*A));
disp('  the output impedance Z0 = '+string(Z0)+' ohm ');

