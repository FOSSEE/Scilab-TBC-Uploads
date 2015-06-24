//Example 1.57://prescribed range
clc;
clear;
p1=(40-10)/40;//probablity of falling in particular range
py=p1/2;//probablity
h=9;//precision index
SD=(1/(sqrt(h)));//standard deviation
y=1.15;//
d= y*SD;//deviation
disp(d,"standard deviation is")
disp("75% of the depth measurement lie wtih the range of (15±0.0904)cm")
