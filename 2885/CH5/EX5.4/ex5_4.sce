//Calculate drain current Id for N channel
clear;
clc;
//soltion
//given
Vp=5//V          //pinch off voltage
Idss=18*10^-3;//A     //drain to source current with gate shorted

//For Vgs= - 3 V
Vgs=-3;//V
Id=Idss*(1-(Vgs/(-Vp)))^2;
printf("The drain current Id(For Vgs= -3V) = %.2f mA\n",Id*10^3);

//For Vgs= 2.5 V
Vgs=2.5;//V
Id=Idss*(1-(Vgs/(-Vp)))^2;
printf("The drain current Id(For Vgs= 2.5V) = %.1f mA",Id*10^3);

