//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_28.sce.

clc;
clear;
t1=1.5;              //Insulation thickness of conductor in cm
d_c=1.5;            //Diameter of conductor in cm
a1=d_c/2;
b1=a1+t1;
R1=500;            //Insulation resistance in megaohm for a given thickness
R2=700;            //Insulation resistance in megaohm for a unknown thickness

//R=(p/(2*%pi*l))*log(b/a)        R1=(p/(2*%pi*l))*log(b1/a1)               R2=(p/(2*%pi*l))*log(b2/a2)

a2=d_c/2;
b2=a2;             //b2 is the sum of a2 and unknown thickness

t2=a2*(b1/a1)^(R2/R1)-b2;         //thickness of 700 megaohm resistance insulation in cm
printf("\n  Insulation thickness of the cable if insulation resistance is 700 megaohm=%1.3f cm",t2)
