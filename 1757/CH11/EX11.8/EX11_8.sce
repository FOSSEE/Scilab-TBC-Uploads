//Example11.8 // determine the feed back current If and analog output voltage
clc;
clear;
close;
Vref = 5  ;   
BI = 101 ;   BI = 011 ;   BI = 100 ;  BI = 001 ;
Rf = 25*10^3 ; 
R = 0.2*Rf ;

// The output current of given R-2R ladder D/A converter is defined as

// If = -(Vref/2*R)*(2^0*b0+2^-1*b1+2^-2*b2) ;

// If = -(Vref/2*R)*(b0+2^-1*b1+2^-2*b2) ;

// for the given value Rf,R and Vref the output current

// If = (0.5*10^-3)*(b0+2^-1*b1+2^-2*b2) ;

// for the binary input 101 the feedback current If is given by
b2 = 1 ;
b1 = 0 ;
b0 = 1 ;
If = (0.5*10^-3)*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 101 analog output is = '+string(If)+ ' A ');

// An analog output voltage Vo is
Vo = -If*Rf ;
disp('An analog output voltage Vo is = '+string(Vo)+ ' V ');


// for the binary input 011 the feedback current If is given by
b2 = 0 ;
b1 = 1 ;
b0 = 1 ;
If = (0.5*10^-3)*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 011 analog output is = '+string(If)+ ' A');

// the An analog output voltage Vo is
Vo = -If*Rf ;
disp('An analog output voltage Vo is = '+string(Vo)+ ' V ');


// for the binary input 100 the feedback current If is given by
b2 = 1 ;
b1 = 0 ;
b0 = 0 ;
If = (0.5*10^-3)*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 100 analog output is = '+string(If)+ ' A ');

// the An analog output voltage Vo is
Vo = -If*Rf ;
disp('An analog output voltage Vo is = '+string(Vo)+ ' V ');

// for the binary input 001 the feedback current If is given by
b2 = 0 ;
b1 = 0 ;
b0 = 1 ;
If = (0.5*10^-3)*(b0+2^-1*b1+2^-2*b2) ;
disp('for the binary input 001 analog output is = '+string(If)+ ' A ');

// the An analog output voltage Vo is
Vo = -If*Rf ;
disp('An analog output voltage Vo is = '+string(Vo)+ ' V ');

