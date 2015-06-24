//Example9.7  // determine the lock range of the FSK demodulator
clc;
clear;
close;
Vcc = 12 ;
Fvco = 0.25*Vcc ;
f = 200*10^3 ; // KHz


// the total time period of VCO 
t = 1/f ;
disp('The total time period of VCO is = '+string(t)+ ' sec ');

// In VCO the capacitor charging and discharging time period are equal ,so the total time period of tringular and square wave forms can be written as 2*t ;


// the charging or discharging time of capacitor 
tcap = t/2 ;
disp('The charging or discharging time of capacitor is = '+string(tcap)+ ' sec ');

// the voltage swing of VCO for 12 V supply
Fvco = 0.25*Vcc ;
disp('The voltage swing of VCO for 12 V supply is = '+string(Fvco)+ ' V ');

// The lock range of PLL 
//FL = (1/2*%pi*f)*(Fvco/tcap);
FL = (3/(2*%pi*f*tcap));
disp('The lock range of PLL FL is = '+string(FL)+ ' Hz ');

// the capture range 
fcap = sqrt(f*FL);
disp('The capture range is = '+string(fcap)+ ' Hz ');
