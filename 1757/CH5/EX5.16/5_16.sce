//Example5.16  // Determine the loop gain of compensated network
clc;
clear;
close;

C = 0.01*10^-6 ; // farad
R = 15*10^3 ; //  ohm
F = 1*10^6 ; // Hz

// the close loop gain of a compensated network is defined as
// Ac = Acl*Acom ;

//Acom = 1/(1+%(F/FL));

FL = 1/(2*3.14*R*C);
disp('FL = '+string(FL/1000)+' KHz ');   // Round Off Error

//  Acom = 1/(1+%j(F/FL));
// After putting value of F ,FL we get

//  Acom = 1/(1+%j(0.9));  //  1+%j(0.9)  Rectangular Form   where real part is 1 and imaginary part is 0.9

// After converting  rectangular from into polar from we get
 
disp('Acom =  [ magnitude = 0.68   angle = -47.7 degree ]');
