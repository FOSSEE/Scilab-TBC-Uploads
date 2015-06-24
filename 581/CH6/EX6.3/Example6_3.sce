
clear;
clc;

printf("\t Example 6.3\n");

l=0.5; //total length of surface,m
Cf=0.00607; //overall friction coefficient
tw=1.183*(2.25)*Cf/2; // wall shear, kg/(m*s^2)

a=0.5; //ratio of wall shear  at x=l and average wall shear

//tw(x)=twavg where 0.664/(x^0.5)=1.328/(47,)893, x=1/8 m thus the wall shear stress plummets to twavg one fourth of the way from the leading edge and drops only to one half   of twavg in the remaining 75 percent plate.x<600*1.566*10^(-5)/1.5=0.0063 m.

// preceding analysis should be good over almost 99 percent of the 0.5 m length of the surface.

printf("\t overall friction coefficient is : %f\n",Cf);
printf("\t wall shear is :%f  kg/(m*s^2)\n",tw);
printf("\t the preceding analysis should be good over almost 99 percent of the 0.5m length of the surface.")
//end