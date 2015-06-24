clc();
clear;
//To calculate the refractive index of liquid
xair=0.15;                     //bandwidth of air
xliq=0.115;                    //bandwidth of liquid
mewair=1;                      //refractive index of air
mewliq=(xair*mewair)/xliq      //refractive index of liquid
printf("The refractive index of liquid is %f",mewliq);