//Ex:106
clc;
clear;
close;
R_e=6378;//in km
H=35786;// in km
l=R_e/(R_e+H);
m=asin(l);// in rad
a=m*180/3.14;// in degree
x=90-8.7;// in degree
o_c=R_e*sin(a*3.14/180);// dis OC in the given triangle AOC IN KM
h=R_e-o_c;//in km
E=10;// in degree
y=90-a-E;// in degree
O_C=R_e*sin(18.56*3.14/180);
O_C1=ceil(O_C);// the newvalue of OC in km
h1=R_e-O_C1;// The new value of H in km
a_r=2*3.14*R_e*h1;//in sq.km
printf("The covered area=%d sq.km", a_r);