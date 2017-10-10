clc;
d=3*10^-3; //diameter of glass tube in meter
r=d/2; //calculating radius of glass tube in meter
//capillary rise for water
theta=0; //angle of contact between liquid and galss tube in degree
t=0.0736; //surface tension of water in N/m
w=9810; //specific weight of water in N/m^3
s=1; //specific gravity of water
h=(2*t*cos(theta*(3.14/180))*10^3)/(s*w*r); //calculating capillary rise
printf('capillary rise for water is %f milimeter\n',h);
//capillary rise for mercury
theta=130;//angle of contact between liquid and galss tube in degree
t=0.51; //surface tension of water in N/m
w=9810; //specific weight of water in N/m^3
s=13.6; //specific gravity of mercury
h=(2*t*cos(theta*3.14/180)*10^3)/(s*w*r); //calculating capillary rise
printf('capillary rise for mercury is %f milimeter\n',h);
printf('negative sign indicate capillary depression');
