//to find the diversity factor of a power station

clc;
maxa=150;
maxb=50;
maxc=55;
c_max=205;

tot_max=(maxa + maxb + maxc);
printf("\n the maximum demand is:  %.2f kW\n ",tot_max);

d_f=(tot_max/c_max);
printf("\n the diversity factor is:  %.2f\n ",d_f);
