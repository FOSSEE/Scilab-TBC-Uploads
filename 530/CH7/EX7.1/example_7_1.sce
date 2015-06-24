clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 7
// Heat Exchangers


// Example 7.1
// Page 285
printf("Example 7.1, Page 285 \n \n");

h = 2000 ; // [W/m^2 K]
// From Table 7.1
U_f = 0.0001 ; // fouling factor, m^2K/W
h_f = 1/[1/h+U_f];
printf("Heat transfer coefficient including the effect of foulung = %f W/m^2 K \n",h_f);

p = (h-h_f)/h*100;
printf("Percentage reduction = %f  \n",p);