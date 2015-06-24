clc();
clear;
//To determine the slit width
D=1.1;                        //distance of the screen from the slit
lambda=589*10^-9;             //wavelength in m
y=4.5*10^-3;                  //distance of first minimum on either side of central maximum
d=((D*lambda)/y)*10^3         //slit width
printf("The slit width is %f mm",d);