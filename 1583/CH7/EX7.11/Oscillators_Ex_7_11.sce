clc
//Chapter 7:Oscillators
//Example 7.11 page no 292
disp('In order to convert the input waveform from 87.5MHz to 10.7MHz the local oscillator would need to be 76.8MHz(low side injection) or 98.2MHz (high side injection).To convert the input waveform from 108.0MHz the local oscilltor would need to be 97.3MHz (low side injection) or 118.7MHz (high side injection) ')
L=0.05*10^-6//choosing value of indicator 
f1=76.8*10^6//starting frequency
f2=97.3*10^6//ending frequency
C1=((1/(2*%pi*f1))^2)/L//Capacitor value for starting frequency
C2=((1/(2*%pi*f2))^2)/L//Capacitor value for ending frequency
mprintf('The value of C is varies batween %3.2e F to %3.2e F ',C1,C2)
