// Example 9.16.1  page 9.53

clc;
clear;

Pin=2;
Pout=27;

gain_db= Pout-Pin;
gain= 10^(Pout/10)/10^(Pin/10);
min_pow = 10^(Pout/10) - 10^(Pin/10);

printf("\nGain in dB is %d dB.\nGain is %.2f.\nMinimum pump power is %.1f mW.",gain_db,gain,min_pow);

//answer in the book for gain is 317, deviation of 0.77 and for minimum pump power it is 499.4, deviation of 0.2
