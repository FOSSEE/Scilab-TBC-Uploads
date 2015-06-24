clc();
clear;
//To determine the distance between centres of central maximum and the fourth dark fringe
n=4;
lambda=589.6*10^-9;                  //wavelength
D=0.95;                              //distance of the screen from the slit
w=0.28*10^-3;                        //width of the slit
d=((n*lambda*D)/w)*10^3
printf("The distance between centres of central maximum and the fourth dark fringe is %f mm",d);