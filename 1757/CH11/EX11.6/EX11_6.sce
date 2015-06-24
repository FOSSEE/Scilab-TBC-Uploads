//Example11.6   // determine the analog output voltage and feed back current If
clc;
clear;
close;
Vref = 12  ;   
BI = 1001 ;   BI = 1101 ;   BI = 1010 ; BI = 0011 ;
Rf = 25 ;  // K ohm
R = 0.25*Rf ;

// The output voltage of given binary weighted resistor D/A converter is defined as

// Vo = -(Rf*Vref/R)*(2^0*b0+2^-1*b1+2^-2*b2+2^-3*b3) ;

// Vo = -(Rf*Vref/R)*(b0+2^-1*b1+2^-2*b2+2^-3*b3) ;

// for the given value Rf,R and Vref the output voltage

// Vo = -60*(b0+2^-1*b1+2^-2*b2+2^-3*b3) ;

// for the binary input 1001 analog output is
b3 = 1 ;
b2 = 0 ;
b1 = 0 ;
b0 = 1 ;
Vo = -60*(b0+2^-1*b1+2^-2*b2+2^-3*b3) ;
disp('for the binary input 1001 analog output is = '+string(Vo)+ ' V ');

// the feedback current If is given by
If = -(Vo/Rf) ;
disp('the feedback current If is = '+string(If)+ ' mA ');


// for the binary input 1101 analog output is
b3 = 1 ;
b2 = 1 ;
b1 = 0 ;
b0 = 1 ;
Vo = -60*(b0+2^-1*b1+2^-2*b2+2^-3*b3) ;
disp('for the binary input 1101 analog output is = '+string(Vo)+ ' V ');

// the feedback current If is given by
If = -(Vo/Rf) ;
disp('the feedback current If is = '+string(If)+ ' mA ');


// for the binary input 1010 analog output is
b3 = 1 ;
b2 = 0 ;
b1 = 1 ;
b0 = 0 ;
Vo = -60*(b0+2^-1*b1+2^-2*b2+2^-3*b3) ;
disp('for the binary input 1010 analog output is = '+string(Vo)+ ' V ');

// the feedback current If is given by
If = -(Vo/Rf) ;
disp('the feedback current If is = '+string(If)+ ' mA ');


// for the binary input 0011 analog output is
b3 = 0 ;
b2 = 0 ;
b1 = 1 ;
b0 = 1 ;
Vo = -60*(b0+2^-1*b1+2^-2*b2+2^-3*b3) ;
disp('for the binary input 0011 analog output is = '+string(Vo)+ ' V ');

// the feedback current If is given by
If = -(Vo/Rf) ;
disp('the feedback current If is = '+string(If)+ ' mA ');
