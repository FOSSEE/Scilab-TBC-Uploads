//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 10
//DIGITAL MULTIPLEXERS
clear all;
clc;
printf("EXAMPLE 10.2(PAGENO 469)");

//given
X_1 = 6*10^3//Nyquist rate in Hz obtained the table
X_2 = 2*10^3//Nyquist rate in Hz obtained the table
X_3 = 2*10^3//Nyquist rate in Hz obtained the table
X_4 = 2*10^3//Nyquist rate in Hz obtained the table

//calculations
s = 2000//speed of rotation
X1 = 3*s//number of samples produced per second for first signal
X2 = 1*s//number of samples produced per second for second signal
X3 = X2//number of samples produced per second for third signal
X3 = X2//number of samples produced per second for fourth signal
SR = X1 + 3*X2//signalling rate
BW = .5*SR//minimum channel bandwidth 

//results
printf("\n\nIf the sampling commutator rotates at the rate of 2000 rotations per second the the signals X_1,X_2,X_3,X_4 will be sampled at their Nyquist rate")
printf("\n\nSignalling rate = %.2f samples per second",SR);
printf("\n\nMinimum channel bandwidth =%.2f Hz",BW);
