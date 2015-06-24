clc;
clear;
w=314;
c=.015e-6;
l=1/(3*w^2*c);//the difference in result is due to erroneous calculation in textbook.
l=round(l*10)/10;
mprintf("inductance =%f Henries",l);
disp("the difference in result is due to erroneous calculation in textbook.")
