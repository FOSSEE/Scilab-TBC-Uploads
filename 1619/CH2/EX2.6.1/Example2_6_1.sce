//Example 2.6.1 page 2.34

clc;
clear;

t= 0.1*10^-6;
L= 12;
B_opt= 1/(2*t);
B_opt=B_opt/1000000; //converting from Hz to MHz
printf("The maximum optical bandwidth is %d MHz.",B_opt);
del= t/L;   //Pulse broadening
del=del*10^9; // converting in ns...
printf("\n\nThe pulse broadening per unit length is %.2f ns/Km",del);
BLP= B_opt*L; //BW length product
printf("\n\nThe Bandwidth-Length Product is %d MHz.Km",BLP);
