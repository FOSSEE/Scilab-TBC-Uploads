//Example11.5   // determine the analog output voltage
clc;
clear;
close;
Vref = 12  ;   
BI = 101 ;   BI = 111 ;   BI = 011 ; BI = 001 ;  BI = 100 ;
Rf = 40*10^3 ;
R = 0.25*Rf ;

// The output voltage of given binary weighted resistor D/A converter is defined as

// Vo = -(Rf*Vref/R)*(2^0*b0+2^-1*b1+2^-2*b2) ;

// Vo = -(Rf*Vref/R)*(b0+2^-1*b1+2^-2*b2) ;

// for the given value Rf,R and Vref the output voltage

// Vo = -48*(b0+2^-1*b1+2^-2*b2) ;

// for the binary input 101 analog output is
b2 = 1 ;
b1 = 0 ;
b0 = 1 ;
Vo = -48*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 101 analog output is = '+string(Vo)+ ' V ');


// for the binary input 111 analog output is
b2 = 1 ;
b1 = 1 ;
b0 = 1 ;
Vo = -48*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 111 analog output is = '+string(Vo)+ ' V ');


// for the binary input 011 analog output is
b2 = 0 ;
b1 = 1 ;
b0 = 1 ;
Vo = -48*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 011 analog output is = '+string(Vo)+ ' V ');


// for the binary input 001 analog output is
b2 = 0 ;
b1 = 0 ;
b0 = 1 ;
Vo = -48*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 001 analog output is = '+string(Vo)+ ' V ');


// for the binary input 100 analog output is
b2 = 1 ;
b1 = 0 ;
b0 = 0 ;
Vo = -48*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 100 analog output is = '+string(Vo)+ ' V');
