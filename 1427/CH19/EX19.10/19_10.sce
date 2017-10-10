//ques-19.10
//Calculating wavelength of radiation emitted
clc
E=1.76*10^-18;//energy absorbed (in J)
c=3*10^8;//speed of light (in m/s)
h=6.6*10^-34;//(in Js)
w=(h*c)/E;
printf("The wavelength of the radiation emitted is %.1f nm.",w*10^9);
