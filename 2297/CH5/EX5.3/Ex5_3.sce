// Example 5.3 : power factor
clc;
clear;
// given :
format('v',6)
w1=2000;//power in watts
w2=500;//power in watts
an=atand(sqrt(3)*(((w1-w2)/(w1+w2))));//angle in degree
disp("part (a)")
pf=cosd(an);//power factor
disp(pf,"power factor is ,=")
disp("part (b)")
w1=2000;//power in watts
w2=-500;//power in watts
an=atand(sqrt(3)*(((w1-w2)/(w1+w2))));//angle in degree
pf=cosd(an);//power factor
disp(pf,"power factor is ,=")
