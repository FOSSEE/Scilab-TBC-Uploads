clc;
clear;
alpha=2.2 //attenuation of light in dB/km
L1=2 //distance in km
L2=6 //distance in km

//calculation
//Case(a):when distance L = 2km
It_by_I0_1=10^-((alpha*L1)/10)

//Case(b):when distance L = 6km
It_by_I0_2=10^-((alpha*L2)/10)

mprintf("\nThe fraction of intial intensity that will remain after 2km is = %1.3f\n",It_by_I0_1) //The answer varies due to round off error.
mprintf("\nThe fraction of intial intensity that will remain after 6km is = %1.3f",It_by_I0_2) //The answer varies due to round off error.
