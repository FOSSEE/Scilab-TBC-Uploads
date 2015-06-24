clc;clear;
//Example 4.4

//given data
r=1.278;//radius in A.U
n=4;//structure is f.c.c
M=63.54;
Na=6.02*10^23;//Avgraodo no. in 1/gm mole

//calculations
a=4*r/(sqrt(2));
V=a^3;
d=n*M/(Na*V);
disp((d*(10^8)^3),'Density in g/cm^3')