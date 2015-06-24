//Example6.14  // to design a summing amplifier
clc;
clear;
close;

// the output of the summing amplifier is given by
//Vo = -R2*((VIa/RIa)+(VIb/RIb)+(VIc/RIc)+(VId/RId));    equation 1

// the equation given is
//Vo = -(3*VIa+12*VIb+15*VIc+18*VId);               equation 2

// comparing equation 1 and 2
//R2/RIa = 3 ;
//R2/RIb = 12 ;
//R2/RIc = 15 ;
//R2/RId = 18 ; 

// the feedback resistance R2= 270 K ohm 
R2 = 270 ;  // K ohm
RIa = R2/3 ;
disp('The value of resistance RIa is = '+string(RIa)+ ' K ohm ');

RIb = R2/12 ;
disp('The value of resistance RIb is = '+string(RIb)+ ' K ohm ');

RIc = R2/15 ;
disp('The value of resistance RIc is = '+string(RIc)+ ' K ohm ');

RId = R2/18 ;
disp('The value of resistance RId is = '+string(RId)+ ' K ohm ');
