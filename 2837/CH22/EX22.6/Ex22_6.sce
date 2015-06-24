clc
clear
//Initalization of variables
loss=80000 //Btu/lb
t=560 //R
//calculations
ratio=t/68
power=loss/(ratio*2544)
//results
printf("Power = %.2f hp",power)
