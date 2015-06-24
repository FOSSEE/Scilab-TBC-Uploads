clc;
clear;
c=.01e-6*50;
w=2*%pi*50;
L=1/(3*c*(w^2));
L=round(L*100)/100;
V=33e3/sqrt(3);
I=V/(w*L);
I=round(I*1000)/1000;
I=round(I*100)/100;
R=V*I/1e3; //the difference in result is due to erroneous calculation in textbook.
mprintf("the value of L=%fH and rating =%fkVA",L,R);
disp("the difference in result is due to erroneous calculation in textbook.");
