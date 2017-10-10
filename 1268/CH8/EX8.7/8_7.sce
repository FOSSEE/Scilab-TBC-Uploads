clc;
disp("Example 8.7")
density= 1000 // in kg/m^s
mew=0.1 // in kg/ms
l=2 // length in m
h=1 // height in m
d=0.02 // diameter in m
D=1
delP=(h+l)*density*9.8
q=%pi*delP*d*d*d*d/(128*mew*l)
U=4*q/(d*d*%pi)
disp(U,"Initial velocity of the liquid from the pipe is ")
