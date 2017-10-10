//ques-24.16
//Calculating amount of a substance left in water after 4 shakings and left in chloroform after single extraction
clc
K=10;//partition coefficient
xo=1;//initial amount of the substance (in g)
v=100;//volume of water (in mL)

//Case-I
V=10;//volume of chloroform (in mL)
n=4;//4 extractions
x1=xo*(v/(v+K*V))^n;

//Case-II
V=40;//volume of chloroform (in mL)
n=1;//single extraction
x2=xo*(v/(v+K*V))^n;
printf("The amount of a substance left in water after 4 shakings is %.4f g and left in chloroform after single extraction is %.1f g.",x1,x2);
