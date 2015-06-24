//Example 3.4 //Determine the common mode rejection ratio(CMRR) of the difference amplifier
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

// The CMRR of difference amplifier is given as
Ad = Ad/2 ;
CMRR = abs(Ad/Acm);
disp(' The CMRR of difference amplifier is = ' +string(CMRR)+ '  ' );

// In decibel it can be expressed as
CMRRdb = 20*log10(CMRR);
disp(' In decibel CMRR is = ' +string(CMRRdb)+ '  ' );
