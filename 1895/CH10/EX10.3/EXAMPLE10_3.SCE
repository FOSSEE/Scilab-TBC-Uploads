
//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 10
//DIGITAL MULTIPLEXERS
clear all;
clc;
printf("EXAMPLE 10.3(PAGENO 470)");

//given
SR = 8000//sampling rate in samples per second
T = 1*10^-6//pulse duration
f = 3.4*10^3//highest frequency component

//calculations
//second case
NR = 2*f//Nyquist rate of sampling
T2 = 1/NR//time taken for one rotation of commutator


//results
printf("\n\nsampling rate for first condition =%.2f",SR);
printf("\n\nThere are 24 voice signals + 1 synchronizing pulse")
printf("\n\nPulse width of each voice channel and synchronizing pulseis 1 microseconds ") 
printf("\n\nNow, time taken by the commutator for 1 rotation =1/8000 = 125*10^-6 seconds")
printf("\n\nNumber of pulses produced in one rotation = 24 + 1 = 25");
printf("\n\nTherefore, the leading edges of the pulses are at 125/25 = 5*10^-6 seconds distance")
printf("\n\nNyquist rate for second condition = %.2f Hz",NR);
printf("\n\nTime taken for one rotation of commutator = %.8f seconds",T2);
printf("\n\nTherefore, 147*10^-6 seconds corresponds to 25 pulses");
printf("\n\ntherefore, 1 pulse corresponds to 5.88*10^-6 seconds");
printf("\n\nAs the pulse width of each pulse is 1*10^-6 seconds, the spacing between adjacent pulses will be 4.88*10^-6 seconds\n and if we assume tou = 0 then the spacing between the adjacent pulses will be 5.88*10^-6 seconds ")
