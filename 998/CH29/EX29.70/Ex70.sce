//Ex:70
clc;
clear;
close;
r=6378;//radius of earth in km
r_o=r+13622;// radius of orbit in km
s_mx=180-2*(acos(r/r_o))*(180/%pi);//the max shadow angle in degree
t_e=(s_mx/360)*24;// max daily eclipse duration in hours
printf("The max shadow angle=%f degree",s_mx);
printf("\n The max daily eclipse duration=%f hours",t_e);