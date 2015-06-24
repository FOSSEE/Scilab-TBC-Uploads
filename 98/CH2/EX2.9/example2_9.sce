//Chapter 2
//Example 2_9
//PAge 23

clear;clc;

area=5e9;
h=30;
rainfall=1.25;
k=0.8;
n_overall=0.7;
lf=0.4;

//generator rating
vol=area*rainfall*k;
printf("Volume of water which can be utilised per annum =%1.0f m^3 \n\n", vol);
w=area*9.81*1e3;
printf("Weight of water available =%2.2f N \n\n", w);
e=w*h*n_overall/1e3/3600;
printf("Electrical energy available pr annum = %1.2f kWh\n\n", e);
ap=e/8760;
printf("Average power = %.1f kW \n\n", ap);
printf("MAximum demand = %.0f kW \n\n", ap/lf);
