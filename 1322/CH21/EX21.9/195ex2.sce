
clear;
clc;
close;
// force of 2 magnetic poles varies as product of their strength & inversly as square of distance between them 
//F=the force.  m1,m2=the pole strengths.  d=the distance apart
mprintf("\n F=k*m1*m2/d^2 \n")
F=3;m1=8;m2=6;d=4;//given
k=F*d^2/(m1*m2);
m1=5;m2=9;d=2;
Force_in_newtons=k*m1*m2/d^2
