clc;
disp("The filter must attenuate the signal by a factor of 10.");  //displaying result
f=300*10^6;  //frequency in Hz
disp(" If R = 100 Ohm ,then the reactance of the capacitor should be about 10 Ohm.");  //displaying result
c=1/(2*(%pi)*f*10);  //calculating capacitance
disp(c,"At 300 MHz, this is in Farad = ");  //displaying result
