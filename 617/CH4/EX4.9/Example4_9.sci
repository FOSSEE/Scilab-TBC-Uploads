clc();
clear;

// to compute the temperatures at different points 

a=0.53;                             // thermal diffusivity in ft^2/hr
M=4;                                // the value of 4 is selected for M
x=6/12;                             // thickness of wall in ft
delx=2/12;
delr=delx^2/(a*M);                  // at time interval the heat transfeered will change the temperature of sink from tb2 to tb2o
printf("the time interval is to be of %.3f hr \n",delr);

// the temperature is constant in the whole wall initiallt 100 degF and afterwards it changes to 1000 degF. 
// we know qo=Z*delx*dely*rho*Cp(tb2'-tb2)/delr    So on solving equations we get tb2'=(tb1+tb3+ta2+tc2)/4
// Using above formula we can calculate the different temperatures as given below in degF

ta=[100 550 775 888 944];
tb=[100 550 775 888 944];
tc=[100 550 775 888 944];
td=[100 550 775 888 944];
printf(" the temperatures at different positions 0.052 hr after, are as follows \n");
printf(" the temperature at point a is %d degF \n",ta(5));
printf(" the temperature at point a is %d degF \n",tb(5));
printf(" the temperature at point a is %d degF \n",tc(5));
printf(" the temperature at point a is %d degF \n",td(5));