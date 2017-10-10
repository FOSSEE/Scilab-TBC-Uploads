// To determine probabilty
//page no 24
clear
clc;
n=50;
p=0.25;
q=0.75;
sd=3.062;   // standard deviation
x1=14.5;
x2=15.5;
x3=11.5
p1=0.7422*100    // probability from table
p2=0.8340*100   // probability from table
//(a) Exactly 15 defective 
m=n*p
z1=((x1-m)/sd)*100
z2=((x2-m)/sd)*100
p=(p2-p1)
mprintf("\nTherefore the probability Exactly 15 defective = %.2f percentage",p);
//(b) Less than or equal to 11 defective
z3=((x3-m)/sd)*100
p3=37.45
mprintf("\nTherefore the probabilityLess than or equal to 11 defective = %.2f percentage",p3);
//(c) More than 15 or 15 defectives
z4=((x1-m)/sd)*100
p4=100-p1
mprintf("\nTherefore the probability  More than 15 or 15 defectives = %.2f percentage",p4);
