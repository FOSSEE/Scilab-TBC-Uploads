// Example12.5  // to determine the output time and duty cycle of V/T converter
clc;
clear;
close;
Vin = 5 ;
C = 0.1*10^-6 ; 
R = 10*10^3 ;
C1 = 100*10^-6 ;

// The output time of a V/T converter is given as
T = (7.5*C1)/(Vin) ;
disp('The output time of a V/T converter is =' +string(T)+ ' sec');

TH = 0.075 ;
TL=TH ; // we consider
// The duty cycle of V?T converter
D = (TL+TH)/(TH) ;
disp('The duty cycle of V?T converter is = '+string(D)+ ' ');

// The output voltage of an integrator is define as
Vio = -(Vin)/(R*C)*T ;
disp('The output voltage of an integrator is is = '+string(Vio)+ ' V');
