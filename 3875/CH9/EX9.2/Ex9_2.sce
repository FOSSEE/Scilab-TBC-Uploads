clc;
clear;
alpha=2.2 //attenuation of light in dB/km
L1=2 //distance in km
L2=6 //distance in km

//calculation
//Case(a):when distance is 2km
It_by_I0=10^-((alpha*L1)/10)
mprintf("\nThe fraction of intial intensity that will remain after 2km is = %1.3f\n",It_by_I0)

//Case(b):when distance is 6km
It_by_I0=10^-((alpha*L2)/10)
mprintf("\nThe fraction of intial intensity that will remain after 2km is = %1.3f",It_by_I0) //The answer varies due to round off error.
