clear;
clc;
vf=1;
r=1250e3;
V=600;
x1=.5;
x2=.5;
x3=.02;
ia2=vf/(x1+x2+x3);
ia=3*ia2;
ia1=ia2;
ia0=ia1;
iab=r/(sqrt(3)*V);
iab=round(iab/10)*10;
ia=round(ia*100)/100;
If=ia*iab;//the difference in result is due to erroneous calculation in textbook.
printf("fault current If=%fA",If);
disp("the difference in result is due to erroneous calculation in textbook.")
