clear all; clc;

disp("Scilab Code Ex 10.11 : ")

//Given:
p = 20; //kPa
E = 600; //kPa
nu = 0.45
a = 4; //cm
b = 2; //cm
c = 3; //cm

//Dilatation:
sigma_x = -p;
sigma_y = -p;
sigma_z = -p;

e = ((1-2*nu)/E)*(sigma_x + sigma_y + sigma_z);

//Change in Length:
ep = (sigma_x - nu*(sigma_y + sigma_z))/E;

del_a = ep*a;
del_b = ep*b;
del_c = ep*c;

//Display:

printf('\n\nThe change in length a      = %1.4fcm ',del_a);
printf('\nThe change in length b      = %1.5fcm ',del_b);
printf('\nThe change in length c      = %1.4fcm ',del_c);
//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------


