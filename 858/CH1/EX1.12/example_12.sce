clc
clear 

printf('example 1.12 page number 37\n')

//to find the average velocity
printf('using trapezoid rule\n')

n = 6;
h = (3 - 0)/n;
I = (h/2)*(0+2*0.97+2*1.78+2*2.25+2*2.22+2*1.52+0);
u_avg = (2/3^2)*I;

printf("average velocity = %f cm/s\n",u_avg)

disp('Simpsons rule')

n = 6;
h = 3/n;
I = (h/3)*(0+4*(0.97+2.25+1.52)+2*(1.78+2.22)+0);
u_avg = (2/3^2)*I;

printf("average velocity = %f cm/s\n",u_avg)


