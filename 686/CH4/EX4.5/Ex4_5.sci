clc();
clear;

// To calculate the depth and yearly temperature fluctuations penetrate the ground

a = 0.039;                                    // thermal diffusivity of claylike soil
to = 24;                                      // time for daily fluctuations in hr
x = 1.6*sqrt(%pi*a*to);                       // depth of penetration for daily fluctuation in ft
xy = sqrt(365)*x;                             // depth of penetration for yearly fluctuation in ft

printf("The depth of penetration for daily fluctuation is %.2f ft and depth of penetration for yearly fluctuation is %.2f ft",x, xy);

 