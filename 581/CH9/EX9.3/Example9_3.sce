
clear;
clc;

printf("\t Example 9.3\n");

p=1.013*10^5;      //pressure of water,N/m^2
D=0.1;             //inside diameter,m
l=0.04;            //wavelength,m
a=0.0589;          //surface tension,N/m
b=0.577;           //density of gas, kg/m^3

u=(2*%pi*a/(b*l))^(0.5);        //the flow will be helmholtz stable until the steam velocity reaches this value.

printf("\t steam velocity required to destablize the liquid flow is : %.1f m/s ,beyond that, the liquid will form whitecaps and be blown back upward.\n",u);

//end