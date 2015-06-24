//chapter 13
//example 13.6
//page 424
clear all;
clc ;
//given schmitt trigger
Vcc=12;Vee=-12;//dual supply
Vo=19;
Ibmax=500;//maximum base current nA
UTP=5;
LTP=-5;//lower and upper trip points
I2=(100*Ibmax)/1000;
printf("\noutput current(I2)=%d microA",I2);
R2=(UTP/I2)*1000;
printf("\nR2=%d kohm, standard value ",R2);
R1=((Vo-UTP)/I2)*1000;
printf("\nR1=%d kohm,use standard value 270 ohm",R1);

