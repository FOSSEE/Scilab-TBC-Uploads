//Example5.17  // Determine the loop gain of compensated network
clc;
clear;
close;

C = 0.5*10^-6 ; // farad
R = 75 ; //  ohm
F = 1*10^6 ; // Hz
Ac1 = 150 ;  
angle1 = 85 ;

// the close loop gain of a compensated network is defined as
// Ac = Acl*Acom ;

//Acom = 1/(1+%(F/FL));

FL = 1/(2*3.14*R*C);
disp('FL = '+string(FL/1000)+' KHz ');   // Round Off Error

//  Acom = 1/(1+%j(F/FL));

// After putting value of  FL we get

//  Acom = 1/(1+%j(F/4.24*10^3));       equation 1

// As F is unknown in above equation 1 
//  by putting different value of F we get Acom for different frequency


// If F = 0 KHz

// Acom = 1/(1+%j(0/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 0 KHz =   [ magnitude = 150   angle = 85 degree ]');


// If F = 2 KHz

// Acom = 1/(1+%j(2*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 2 KHz=  [  magnitude = 136.4   angle = 64.5 degree ]');


// If F = 4 KHz

// Acom = 1/(1+%j(4*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 4 KHz = [ magnitude = 107.14   angle = 41.7 degree ]');


// If F = 6 KHz

// Acom = 1/(1+%j(6*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 6 KHz =  [ magnitude = 88.24   angle = 30.25 degree ]');



// If F = 8 KHz

// Acom = 1/(1+%j(8*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 8 KHz  =  [ magnitude = 71.4   angle = 23 degree ]');



// If F = 10 KHz

// Acom = 1/(1+%j(10*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom  for F = 10 KHz =   [ magnitude = 58.59  angle = 18 degree ]');



// If F = 20 KHz

// Acom = 1/(1+%j(20*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 20 KHz =  [ magnitude = 31.12   angle = 7 degree ]');



// If F = 40 KHz

// Acom = 1/(1+%j(40*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom  for F = 40 KHz =  [ magnitude = 15.9   angle = 1.1 degree ]');





// If F = 80 KHz

// Acom = 1/(1+%j(80*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 80 KHz =  [ magnitude = 7.9  angle = -2 degree ]');




// If F = 100 KHz

// Acom = 1/(1+%j(100*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 100 KHz =  [ magnitude = 6.4   angle = -2.6 degree ]');




// If F = 200 KHz

// Acom = 1/(1+%j(200*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 200 KHz =  [ magnitude = 3.18  angle = -3.8 degree ]');



// If F = 400 KHz

// Acom = 1/(1+%j(400*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 400 KHz =  [ magnitude = 1.59   angle = -4.4 degree ]');


// If F = 800 KHz

// Acom = 1/(1+%j(800*10^3/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 800 KHz =  [ magnitude = 0.79   angle = -4.7 degree ]');


// If F = 1 MHz

// Acom = 1/(1+%j(1*10^6/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 1 MHz =  [ magnitude = 0.64   angle = -4.7 degree ]');


// If F = 1.2 MHz

// Acom = 1/(1+%j(1.2*10^6/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 1.2 MHz =  [ magnitude = 0.52   angle = -4.7 degree ]');



// If F = 1.4 MHz

// Acom = 1/(1+%j(1.4*10^6/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 1.4 MHz =  [ magnitude = 0.45   angle = -4.7 degree ]');


// If F = 1.6 MHz

// Acom = 1/(1+%j(1.6*10^6/4.24*10^3));  

// After solving and converting  rectangular from into polar from we get
 
disp('Acom for F = 1.6 MHz =  [ magnitude = 0.4   angle = -4.7 degree ]');
