//Ex:107
clc;
clear;
close;
R_e=6378;//in km
h1=5413.26;// in km when E=0 degree
h2=4348;// in km when E=10 degree
a_r1=h1*100/(2*R_e);// percentage of area covered
a_r2=h2*100/(2*R_e);//percentage of area covered
printf("The percentage of area covered when E=0 degree=%f %%", a_r1);
printf("\n The percentage of area covered when E=0 degree=%f %%", a_r2);