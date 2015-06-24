
//Example11.7 // determine the feed back current If and analog output voltage
clc;
clear;
close;
Vref = 8  ;   // V
BI = 001 ;   BI = 010 ;   BI = 110 ;
Rf = 25*10^3 ; // Hz
R = 0.2*Rf ;

// The output current of given binary weighted resistor D/A converter is defined as

// If = -(Vref/R)*(2^0*b0+2^-1*b1+2^-2*b2) ;

// If = -(Vref/R)*(b0+2^-1*b1+2^-2*b2) ;

// for the given value Rf,R and Vref the output current

// If = -(1.6*10^-3)*(b0+2^-1*b1+2^-2*b2) ;

// for the binary input 001 the feedback current If is given by
b2 = 0 ;
b1 = 0 ;
b0 = 1 ;
If = (1.6*10^-3)*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 001 analog output is = '+string(If*1000)+ ' mA ');

// An analog output voltage Vo is
Vo = -If*Rf ;
disp('An analog output voltage Vo is = '+string(Vo)+ ' V ');


// for the binary input 010 the feedback current If is given by
b2 = 0 ;
b1 = 1 ;
b0 = 0 ;
If = (1.6*10^-3)*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 010 analog output is = '+string(If*1000)+ ' mA');

// the An analog output voltage Vo is
Vo = -If*Rf ;
disp('An analog output voltage Vo is = '+string(Vo)+ ' V ');


// for the binary input 110 the feedback current If is given by
b2 = 1 ;
b1 = 1 ;
b0 = 0 ;
If = (1.6*10^-3)*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 110 analog output is = '+string(If*1000)+ ' mA ');

// the An analog output voltage Vo is
Vo = -If*Rf ;
disp('An analog output voltage Vo is = '+string(Vo)+ ' V ');
