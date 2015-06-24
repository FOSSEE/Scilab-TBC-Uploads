//Ex:8.28
clc;
clear;
close;
ac=14;// acceptance angle in degree
nc=(sin(ac*3.14/180))^2;// coupling efficiency
l_s=-10*log(nc)/log(10);// loss in decibels
printf("The coupling efficiency =%f", nc);
printf("\n The loss =%f decibels", l_s);