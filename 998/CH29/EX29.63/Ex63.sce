//Ex:63
clc;
clear;
close;
h=35800;//height in km
r=6364;//earth's radius in km
r_o=r+h;//orbital radius in km
i=2;//angle of inclination in degree
w_m=0.0175;
y_m=i;//max latitude deviation
d_m=r_o*i*(3.14/180);//max displacement due to latitude deviation in km
D_m=d_m*(w_m/y_m);//max displacement due to longitude deviation in km
printf("max displacement due to latitude deviation=%d km",d_m);
printf("\n max displacement due to longitude deviation=%f km",D_m);