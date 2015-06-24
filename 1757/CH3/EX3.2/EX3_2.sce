//Example3.2 // To determine the difference-mode and common-mode gain of the difference amplifier
clc;
clear;
close;
Vcc = 10 ; // volt
Vee = -10 ;  //volt
Iq  =  0.8 ;  //mA
Ie  =  0.8 ;  //mA
Rc = 12 ;  //kilo-Ohm
Vt = 0.026 ;  // volt

// Transistor parameter
beta = 100 ;
Rs = 0 ;  //Ohm
Ro = 25 ;  //kilo-Ohm 
// The differential mode gain Ad
gm = (Ie/ 2*Vt) ;
// Ad = (gm*r*Rc/r+Rc) ;   // where r is r-pi
// For Rb=0 , the differential mode gain is

Ad = (Ie/(2*Vt))*Rc;
//But
disp(' The differential mode gain Ad = ' +string(Ad)+ '   ' );

//The common mode gain Acm
// Acm = - (gm*Rc/1+2*gm*Re+2*Re/r)
Acm =-(Ad/(1+(((1+beta)*Ie*Ro)/(beta*Vt))));
disp(' The common mode gain Acm = ' +string(Acm)+ '   ' );
