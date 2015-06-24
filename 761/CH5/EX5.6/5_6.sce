clc;
//page no 193
//prob no. 5.6
//Refer fig. 5.13
//Filter method SSB generator 
fc=5*10^6;//filter centre freq.
BW=3*10^3;//Filter bandwidth
foc=4.9985*10^6;//carrier oscillator freq.
disp('a)The USB will be passed');//Since carrier freq is at low end of passband
disp('b)The carrier freq should be moved to the high end of filter at 5.0015MHz');//To generate the LSB