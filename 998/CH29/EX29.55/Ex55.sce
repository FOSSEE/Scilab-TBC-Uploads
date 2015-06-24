//Ex:55
clc;
clear;
close;
a=50000*1000/2;//semi major axis in km
G=6.67*10^(-11);//Gravitation const in N-m^2/kg^2
m=5.98*10^24;//mass of earth in kg
u=G*m;
st=sqrt((a^3)/u);
s_t=6.25*10^3;
t=2*(3.14)*s_t;
printf("The period of a satellite=%f s",t);
printf("\n The period of a satellite is 10 hours 54 minutes");