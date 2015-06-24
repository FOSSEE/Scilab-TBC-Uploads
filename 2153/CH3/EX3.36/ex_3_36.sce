// Example 3.36: interplanner spacing and miller indices
clc;
clear;
close;
a=3.16;// in Ä
h=1.54;// in Ä
n=1;//
th=20.3;// in degree
d=((n*h)/(2*sind(th)));// interplanner spacing in Ä
x=a/d;//
y=x^2;//
disp(d,"interplanner spacing in Ä is")
disp("miller indices are (110) , (011) or (101)")
