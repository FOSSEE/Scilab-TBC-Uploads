clc();
clear;

// to compute the temperatures at different points 
a=0.02;                             // thermal diffusivity in ft^2/hr
M=4;                                // the value of 4 is selected for M
x=9/12;                             // thickness of wall in ft
delx=1.5/12;
delr=delx^2/(a*M);                     // at time interval the heat transfeered will change the temperature of sink from tb2 to tb2o
printf("The time interval is to be of %.3f hr \n",delr);

t1o=370; t2o=435; t3o=480; t4o=485; t5o=440; t6o=360; t7o=250;
 
// tempetaures at different positions at wall in degF initially
// we know qo=Z*delx*dely*rho*Cp(tb2'-tb2)/delr    So on solving equations we get tb2'=(tb1+tb3+ta2+tc2)/4
// using above formula, temperaures at different positions as shown below can be calculated in degF

ta=[370 430 470 473 431 352 250];
tb=[370 425 461 462 422 346 250]; 
tc=[370 420 452 452 413 341 250];
td=[370 415 444 442 404 336 250];
printf(" The temperatures at different positions 0.78 hr after, are as follows \n");
for i=1:7
printf(" The temperature at point %d is %d degF \n",i,td(i));
end


