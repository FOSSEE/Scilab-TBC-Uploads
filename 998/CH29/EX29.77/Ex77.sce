//Ex:77
clc;
clear;
close;
a_d=30+15;//angular difference in degree
R=10000;//orbital radius in km
l_s=sqrt((R^2)+(R^2)-2*(R^2)*cos(45*3.14/180));
R_tp=(2*l_s)/(3*10^5);
printf("The round trip propagation delay=%f sec", R_tp);
printf("\n The round trip propagation delay=%f millisec", ceil(R_tp*1000));