clc;
disp("Example 8.6")
density= 1000 // in kg/m^s
mew=0.1 // in kg/ms
l=2 // length in m
h=1 // height in m
d=0.02 // diameter in m
D=1
t=(32*mew*l*D*D/(density*9.81*d*d*d*d))*log(1+h/l)
disp(t,"Draining time of the liquid is ")
