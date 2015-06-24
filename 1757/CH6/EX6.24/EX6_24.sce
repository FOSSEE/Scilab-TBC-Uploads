//Example6.24  // To determine the output voltage
clc;
clear;
close;
Vin = 2.5 ;
Rf = 100*10^3 ;
R1 = 10*10^3 ;
RI1 = 25*10^3 ;
RI2 = 10*10^3 ;
R2 = 100*10^3 ;

// the output voltage of an inverting amplifier
Vo1 = (1+(R2/R1))*Vin ; ;
disp('The output voltage of an inverting amplifier is = '+string(Vo1)+ ' V ');

// the output voltage of follower Vo2 is
Vo2 = Vin ;
disp('the output voltage of follower Vo1 is = '+string(Vo2)+ '  V');

// the output of the inverting summing amplifier
R2 = 75*10^3 ;
Vo = R2*((Vo1/RI1)+(Vo2/RI2));
disp('the output of the inverting summing amplifier is = '+string(Vo)+ ' V ');


