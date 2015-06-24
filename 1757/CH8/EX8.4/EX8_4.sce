//Example8.4  //determine the output of balanced demodulator
clc;
clear;
close;
// Vc1 = 10*cos*wc*t ;
// Vm2 = 20*cos*wm*t*cos*wc*t

// the amplitude of carrier and modulated signal 
Ac1 = 10 ;  // V
// K*Am2*Ac2 = 20 ; // V

// the output of multiplier 
// Vo1 = K*Vc1*Vm2 ;
disp('          The output voltage of multiplier is  =      (K^2*Ac1*Ac2*Am2)/2*(cos*wm*t+cos*wm*t*cos*2*w*t)'); 


//the output of low pass filter
// Vo = ((K^2*Ac1*Ac2*Acm)/2)*cos*wm*t ;
disp('          The output voltage of low pass filter is  =   100coswmt'); 
