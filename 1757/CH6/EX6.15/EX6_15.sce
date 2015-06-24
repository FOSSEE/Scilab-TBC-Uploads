//Example6.15  // for the instrumentation amplifier find Vo1 , Vo2 , Vo 
clc;
clear;
close;
// Vi1 = -25 sin wt  ;  // mV
// Vi2 = 25 sin wt ; // mV
R1 = 10*10^3 ;
R2 = 20*10^3 ;
R3 = 20*10^3 ;
R4 = 10*10^3 ;

// the output of first op-amp A1 is given by
// Vo1 = (1+(R2/R1))*Vi1-(R2/R1)*Vi2 ;
//by solving above equation we get
disp('The output of first op-amp A1 is = -275*sin wt mV ');

// the output of second op-amp A2 is given by
// Vo2 = (1+(R2/R1))*Vi2-(R2/R1)*Vi1 ;
//by solving above equation we get
disp('The output of second op-amp A2 is = 275*sin wt mV ');

// the output of third op-amp A3 is given by
// Vo = (R4/R3)-(1+(2R2/R1)*(Vi2-Vi1) ;
//by solving above equation we get
disp('The output of third op-amp A3 is = 825*sin wt mV ');

// current through the resistor R1 and R2 is
//i = (Vi1-Vi2)/R1 ;
disp('current through the resistor R1 and R2 is = 5 sin wt uA ');

// current through the non-inverting terminal resistor R3 and R4 
//i3 = Vo2/(R3+R4);
disp('current through the non-inverting terminal resistor R3 and R4 = 5.5 sin wt uA ');

// current through the inverting terminal resistor R3 and R4 
//i2 = Vo1-(R3/(R3+R4))*Vo2/R3 ;
disp('current through the inverting terminal resistor R3 and R4 = 22 sin wt uA ');
