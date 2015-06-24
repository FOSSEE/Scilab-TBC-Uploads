clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 6
// Heat Transfer by Natural Convection


// Example 6.4
// Page 264
printf("Example 6.4, Page 264 \n \n");

D = 0.006 ; // [m]
e = 0.1 ;
Ti = 800 ; // [C]
Ta = 1000 ; // [C]
// Rate at which heat gained = net radiant heat, gives h*(Ta-800) = 1306.0 ; // [W/m^2]

// Using trial and error method
// Trial 1
printf("Trial 1 \n");
// Let Ta = 1000 degree C
printf("Let Ta = 10000 C \n");

Tm = (Ta+Ti)/2;
// From table A.2
v = 155.1*10^-6 ; // [m^2/s]
k = 0.0763 ; // [W/m K]
Pr = 0.717 ;

Gr = 9.81*1/1173*(200*D^3)/(v^2);
Ra = Gr*Pr ;

// From eqn 6.3.2
Nu = 0.36 + 0.518*(Ra^(1/4))/[1+(0.559/Pr)^(9/16)]^(4/9);
h = Nu*k/D;
x = h*(Ta-Ti); // [W/m^2]
printf("Value of h(Ta-800) = %f W/m^2, which is much larger than the required value of 1306 W/m^2 \n",x);

// Trial 2
printf("\nTrial 2 \n");
// Let Ta = 900
printf("Let Ta = 900 C \n");
Ra2 = 6.42 ;
Nu2 = 0.9841 ;
h2 = 12.15 ;
x2 = h2*(900-800);
printf("Value of h(Ta-800) = %f W/m^2, which is a little less than the required value of 1306 W/m^2 \n",x2);

// Trial 3
printf("\nTrial 3 \n");
// Let Ta = 910 
printf("Let Ta = 910 C \n");
Ra3 = 6.93 ;
Nu3 = 0.9963 ;
h3 = 12.33 ;
x3 = h3*(910-800);
printf("Value of h(Ta-800) = %f W/m^2 \nThis value is little more than the required value of 1306 W/m^2 \n",x3);
// Interpolation
T = 900 + (910-900)*(1306-x2)/(x3-x2);
printf("\nThe correct value of Ta obtained by interpolation is %f C",T);
