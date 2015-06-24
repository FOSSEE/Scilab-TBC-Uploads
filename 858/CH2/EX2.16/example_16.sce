clc
clear 
printf("example 2.16 page number 76\n\n")

//to find the molecular formula

C=54.5     //% of carbon
H2=9.1     //% of hydrogen
O2=36.4    //% of oxygen
x=C/12;    //number of carbon molecules
y=O2/16;   //number of oxygen molecules
z=H2/2    //number of hydrogen molecules
molar_mass=88;
density=44;

ratio=molar_mass/density;
x=ratio*2;
y=ratio*1;
z=ratio*4;

printf("x = %f, y = %f, z = %f",x,y,z)
printf("\n\nformula of butyric acid is = C4H8O2")
