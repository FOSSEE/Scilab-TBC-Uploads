
clear;
clc;

printf("\t Example 5.4\n");

t=0.003; //half thickness of sword, m
a=1.5*10^-5; 

Tmax=t^2/(3.64^2*a); //condition for sword to be in semi infinite region
printf("\t maximum time for sword to be in semi infinite region is : %.3f s\n",Tmax);
printf("\t thus the quench would be felt at the centerline of the sword within only 1/20 s. the thermal diffusivity of clay is smaller than that of steel by a factor of about 30, so the quench time of coated steel must continue for over 1s before the temperature of the steel is affected at all, if the clay and sword thickness are comparable.")
//end