//Example11.10  // determine the analog output voltage and feed back current If
clc;
clear;
close;
Vref = 15  ;   
BI = 1000 ;
Rf = 40 ;  // K ohm
R = 0.4*Rf ;

// by using voltage divider rule Vin can be calculated as
 Vin = -(Vref*2*R)/(2*R+2*R) ;
 
// The output voltage of given R-2R ladder D/A converter is defined as

// Vo = -(Rf*Vin/R)

Vo = (Vref*Rf)/(2*R)
disp('for the binary input 1000 output voltage is = '+string(Vo)+ ' V ');

// the feedback current If is given by
If = -(Vo/Rf) ;
disp('the feedback current If is = '+string(If)+ ' mA ');

