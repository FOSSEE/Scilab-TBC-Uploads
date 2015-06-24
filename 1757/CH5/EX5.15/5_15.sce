//Example5.15  // Determine the loop gain of compensated network
clc;
clear;
close;

C = 0.0025*10^-6 ; // farad
R = 10*10^3 ; //  ohm
F = 1*10^6 ; // Hz
Ac1 = 100 ;  
angle1 = 90 ;

// the close loop gain of a compensated network is defined as
// Ac = Acl*Acom ;

//Acom = 1/(1+%(F/FL));

FL = 1/(2*3.14*R*C);
disp('FL = '+string(FL/1000)+' KHz ');   // Round Off Error

//  Acom = 1/(1+%j(F/FL));
// After putting value of F ,FL we get

//  Acom = 1/(1+%j(158.7));  //  1+%j(158.7)  Rectangular Form   where real part is 1 and imaginary part is 158.7

// After converting  rectangular from into polar from we get
 
disp('Acom =  [ magnitude = 6.3*10^-3   angle = -89.6 degree ]');

//   Ac = Ac1*Acom ;         equation 1

// after putting Ac1 and Acom value in equation 1  we get   Ac1 = 100 angle 90  and Acom = 6.3*10^-3  angle = -89.6    

disp('Ac =  [ magnitude = 0.68   angle = 0.4 degree ]');
