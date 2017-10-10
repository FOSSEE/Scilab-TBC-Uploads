// To determine probabilty
//page no 25
clear
clc;
sd=3.1622;   // standard deviation
x1=7.5;
x2=8.5;
x3=13.5;
x3=6.5;
m=10;
p1=0.2148*100;      // probability from table
p2=0.3192*100;   // probability from table
p3=0.8643*100;   // probability from table
p4=0.1357*100;   // probability from table

//(a) Exactly 8 defectives
z1=((x1-m)/sd)*100
z2=((x2-m)/sd)*100
pa=(p2-p1)
mprintf("\nTherefore for exactly 8 defectives = %.2f percentage",pa);
//(b) For 14 or more defectives
z3=((x3-m)/sd)*100
pa2=100-p3
mprintf("\nFor 14 or more is = %.2f percentage",pa2);
//(c) For less than 6 defectives
z4=((x1-m)/sd)*100
mprintf("\nFor less than 6 defectives = %.2f percentage",p4);
