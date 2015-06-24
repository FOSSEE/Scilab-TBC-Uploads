//example 7.5 
clc
clear
//Ra = input('Enter the value of the resistance RA in Kohms :');
//Rb = input('Enter the value of the resistance RB in Kohms :');
//C =input('Enter the value of the Capacitance C in micro farads :');
Ra=1 //taking the given input 
Rb=1
C= 1 *10^-3
T= (Ra + 2*Rb)*C;
frq = 1.44 * (1/T); //substituting in the eqution
printf('Freqency of oscillation is %f KHz',frq); //displaying result