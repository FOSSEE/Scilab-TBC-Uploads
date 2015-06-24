clear;
clc;
p2=.4;
p3=1.3;
p1=1.8;
d1=asind(1/p1);
d1=round(d1*10)/10;
d3=180-asind(1/p3);
k=d1-d3;
t=(p2*cosd(d1));
p=(cosd(d3));
y=(((d1-d3)*%pi/180)+(p2*cosd(d1))-(p3*(cosd(d3)-.14)))/(p2-p3);
c=acosd(y);//the difference in result is due to erroneous calculation in textbook.
mprintf("the clearing critical angle =%f(electrical degrees)",c)
disp("the difference in result is due to erroneous calculation in textbook.");
