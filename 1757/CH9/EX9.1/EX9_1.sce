//Example9.1  // to find output voltage for a constant input signal frequency of 200 KHz
clc;
clear;
close;
fo = 2*%pi*1*10^3 ; // KHz/V  // VCO sensitivity range 4.1
fc = 500  ; // Hz a free running frequency
f1 = 200 ; // Hz  input frequency
f2 = 2*10^3 ; // Hz  input frequency

// the output voltage of PLL is defined as
//Vo = (wo-wc)/ko
ko = fo ;
// when i/p locked with o/p wo=wi
// Vo = (wi-wc)/ko ;

//for the i/p frequency fi = 200 Hz
fi = 200 ;  // Hz
Vo = (((2*%pi*fi)-(2*%pi*fc))/ko);
disp('The output voltage of switching regulator circuit is = '+string(Vo)+' V '); 

//for the i/p frequency fi = 200 Hz
fi = 2*10^3 ;  // Hz
Vo = (((2*%pi*fi)-(2*%pi*fc))/ko);
disp('The output voltage of switching regulator circuit is = '+string(Vo)+' V '); 
