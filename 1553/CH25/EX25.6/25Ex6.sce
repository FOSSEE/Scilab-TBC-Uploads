//Chapter 25 Ex 6
clc;
clear;
close;
ExtVol=50*40*23; //given
IntVol=44*34*20; //given
Metal_vol=ExtVol-IntVol;

Weight=(Metal_vol*0.5)/1000;
printf("Weight of box is %2.2f kg",Weight);
