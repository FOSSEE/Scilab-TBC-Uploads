//Ex:5.19
clc;
clear;
close;
h=200;// height in km
B=20;// angle of elevation in degree
B1=B*3.14/180;// angle of elevation in radians
R=6370;// radius of earth in km
D=2*h/tan(B1);// in km
D1=2*R*((3.14/2)-(B1)-asin((R*cos(B1))/(R+h)));// transmission-path distance in km
printf("The transmission-path distance= %f km", D1);