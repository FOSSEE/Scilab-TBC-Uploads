// Example 7.2.3  page 7.12

clc;
clear;

r=25d-6;        //radius
R=39;      //Lambertian emission pattern
NA=0.25;    //numerical aperture
a=35d-6;    //area
Pc1= %pi^2*a^2*R*NA^2;  //computing coupled power when r<a
Pc1=Pc1*10^7;
Pc= %pi^2*r^2*R*NA^2;   //computing coupled power when r>a
Pc=Pc*10^7;

printf("\nOptical power when r>a is %.2f mW.\nOptical power when r<a is %.3f mW.",Pc,Pc1);

