clear all; clc;

disp("Scilab Code Ex 6.17 : ")

//Given:
b = 60/1000; //m
h = 30/1000; //m
M = 40; //Nm
c1= h/2;
rib_t = 5/1000; //m
rib_w = 10/1000;//m

//Without Ribs:
I1 = (1/12)*(b*h^3);
sigma_max1 = (M*c1)/(I1*10^6);

//With Ribs:
y1 = c1;
y2 = h+(rib_t/2);
A1 = h*b;
A2 = rib_t*rib_w;
y_bar = ((y1*A1)+2*(y2*A2))/(A1 + 2*A2);

c2 = h+rib_t - y_bar;
I2 = I1 + (b*h*(y_bar - y1)^2);
I3 = (1/12)*rib_w*rib_t^3 + (rib_w*rib_t*(y2 - y_bar)^2);
I = I2 + 2*I3;

sigma_max2 = (M*c2)/(I*10^6);

if(sigma_max2>sigma_max1)
    
  printf("\n\nThe maximum normal stress in the member without ribs = %1.2f MPa',sigma_max1);
 printf("\nThe maximum normal stress in the member with ribs = %1.2f MPa',sigma_max2);
 printf("\nThe ribs should be omitted.");
 
 end

     
//-----------------------------------------------------------------END--------------------------------------------------------------------------


