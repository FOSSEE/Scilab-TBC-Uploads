clc;

printf("Example 1.1\n");
// 1 Poise = 1g/cm s = ((1/453.6)lb)/((1/30.48)ft*1s)
be=30.48/453.6*3600; //be->british engineering unit
printf("\n 1 Poise = %.4f lb/ft s",be/3600);
printf("\n         = %.0f lb/ft h",be);

// 1 Poise = 1g/cm s = ((1/1000)kg)/((1/100)m*1s)
si=100/1000; //si->SI units
printf("\n 1 Poise = %.1f kg/m s ",si);
printf("\n         = %.1f N s/m^2 ",si);