
//Example5.20  // Determine the loop gain of compensated network
clc ;
clear ;
close ;

C = 0.01*10^-6 ; // farad
R1 = 10*10^3 ; //  ohm
R2 = 15*10^3 ; //  ohm
F = 1*10^6 ; // Hz


// the close loop gain of a compensated network is defined as

//Acom = (1+%(F/FH))/(1+%(F/FL));

FH = 1/(2*3.14*R1*C);
disp('FH = '+string(FH/1000)+' KHz ');   // Round Off Error


FL = 1/(2*3.14*(R1+R2)*C);
disp('FL = '+string(FL/1000)+' KHz ');   // Round Off Error


//Acom = (1+%(F/FH))/(1+%(F/FL));

// After putting value of FH ,FL we get

//  Acom = (1+%j(658.9))/(1+%j(1.56*10^3) 

// After converting  rectangular from into polar from we get
 
disp('Acom =   [magnitude = 0.4]  ');
