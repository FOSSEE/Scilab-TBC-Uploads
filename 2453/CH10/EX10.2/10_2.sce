//To calculate the divergence
a2 = 6;     //spot diameter, mm
a2 = a2*10^-3;    //spot diameter, m
a1 = 4;     //spot diameter, mm
a1 = a1*10^-3;     //spot diameter, m
d2 = 2;    //distance from laser, m
d1 = 1;    //distance from laser, m
theta = (a2-a1)/(2*(d2-d1));     //divergence, radian
theta = theta*10^3;      //divergence, milli radian
printf("divergence is %d milli radian",theta);
