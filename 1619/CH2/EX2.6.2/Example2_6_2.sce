//Example 2.6.2 page 2.34

clc;
clear;

t= 0.1*10^-6;
L= 10;
B_opt= 1/(2*t);
B_opt=B_opt/1000000; //converting from Hz to MHz
printf("The maximum optical bandwidth is %d MHz.",B_opt);
del= t/L;
del=del/10^-6; //converting in us...
printf("\n\nThe dispersion per unit length is %.2f us/Km",del);
BLP= B_opt*L;
printf("\n\nThe Bandwidth-Length product is %d MHz.Km",BLP);
