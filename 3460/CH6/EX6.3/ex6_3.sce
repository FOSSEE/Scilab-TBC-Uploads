clc;
clear all;
C=21*1e-12;//given capacitance
L=111.91*1e-9;//given inductance
//part a for 10 foot section
Z0=sqrt(L*10/(10*C));//characteristic impedence for 10 foot section
disp(Z0,'characteristic impedence');
//part b for 500 foot section;
Z1=sqrt(L*500/(500*C));//characteristic impedence for 500 foot section
disp(Z1,'characteristic impedence');


