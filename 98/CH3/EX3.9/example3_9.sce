//Chapter 3
//Example 3_9
//PAge 52

clear;
clc;

houses=1e3;
cl=1.5;
dem_fac=0.4;
div_fac=2.5;
factories=10;
md_f=90;
tubewells=7;
mdt=7;
df=1.2;

//Minimum capacity of power station

sum_md=cl*dem_fac*houses;
md_dl=sum_md/div_fac;
md_t=mdt*tubewells;
total_md=md_dl+md_t+md_f;
md_station=total_md/df;
printf("Minimum capacity of station required=%.2f kW \n\n", md_station);

