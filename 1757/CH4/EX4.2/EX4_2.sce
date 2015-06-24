//Example 4.2 // Determine the differece voltage and open loop gain of an op-amp
clc ;
clear ;
close ;
V1 = -5 ; // volt  // input voltage
V2 = 5 ; // volt
Vo = 20 ; //volt  // output voltage

// the difference voltage is given by 
 Vd = V2-V1 ;
disp('  The difference voltage is = '+string(Vd)+' V ');

// open loop gain 
A = (Vo/Vd);
disp('  The open loop gain is = '+string(A)+'  ');
