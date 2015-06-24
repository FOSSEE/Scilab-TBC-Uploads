//Chapter 7, Problem 6
clc;
N=300;                      //No of turns
I=5;                        //Current in the coil
l=40*10^-2;                 //Length
A=4*10^-4;                  //Area of cross-sectional
H=(N*I)/l;                  //Calculating magnetic field strength
u0=4*%pi*10^-7;             //permeability of free space
B=u0*H;                     //Flux density
phi=B*A;                    //Fux
disp("(a)");
printf("Magnetic field strength = %d A/m\n\n\n",H);
disp("(b)");
printf("Flux density = %f mT\n\n\n",B*1000);
disp("(c)");
printf("Flux = %f μWb",phi*10^6);
