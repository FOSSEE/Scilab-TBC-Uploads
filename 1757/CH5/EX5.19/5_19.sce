//Example5.19  // Determine the loop gain of compensated network
clc ;
clear ;
close ;

C = 0.0025*10^-6 ; // farad
R1 = 10*10^3 ; //  ohm
R2 = 20*10^3 ; //  ohm
F = 1*10^6 ; // Hz
Ac1 = 100 ;  
angle1 = 90 ;

// the close loop gain of a compensated network is defined as

// Ac = Acl*Acom ;

//Acom = (1+%(F/FH))/(1+%(F/FL));

FH = 1/(2*3.14*R1*C);
disp('FH = '+string(FH/1000)+' KHz ');   // Round Off Error


FL = 1/(2*3.14*(R1+R2)*C);
disp('FL = '+string(FL/1000)+' KHz ');   // Round Off Error


//Acom = (1+%(F/FH))/(1+%(F/FL));

// After putting value of FH ,FL we get

//  Acom = (1+%j(158.7))/(1+%j(471.7) 

// After converting  rectangular from into polar from we get
 
disp('Acom =  [ magnitude = 0.34   angle = -0.24 degree ]');

//   Ac = Ac1*Acom ;         equation 1

// after putting Ac1 and Acom value in equation 1  we get   Ac1 = 100 angle 90  and Acom = 0.34  angle = -0.24    

disp('Ac = [ magnitude = 34   angle = 89.76 degree ]');
