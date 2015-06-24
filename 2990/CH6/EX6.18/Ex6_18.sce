
clc; funcprot(0);
// Initialization of Variable
B=741.0;//airbase in m
f=152.4;//focal length in mm
pa=94.32;//in mm
ha=325;//elevation in mm
//calculation
H=ha+B*f/pa;
disp(H,"height in m")
clear()
