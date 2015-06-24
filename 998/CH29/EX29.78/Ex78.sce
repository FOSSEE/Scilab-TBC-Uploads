//Ex:78
clc;
clear;
close;
R=6378;// Radius of earth in km
R_o=42164;//orbital radius in km
A1=(atan(tan(20*%pi/180)/(sin(60*%pi/180))))*(180/%pi);// in degree
A=180-A1;//Azimuth angle in degree
x_sl=20*%pi/180;//Diff b/t satellite longitude & earth station longitude in radians
x_l=60*%pi/180;;//earth station latitude in radian
B=cos(x_sl)*cos(x_l);
s=(acos(B))*(180/%pi);
s1=R*sin(s*%pi/180);
s2=R_o-R*B;
E=(atan(s2/s1))*(180/%pi)-s;
printf("The Azimuth angle=%f degree", A);
printf("\n The elevation angle=%f degree", E);