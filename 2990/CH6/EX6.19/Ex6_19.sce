
clc; funcprot(0);
// Initialization of Variable
H=1632.0;//above MSL in m
f=152.4;//focal length in mm
pa=82.75;//in mm
ha=283;//elevation in m
//calculation
B=pa/f*(H-ha);
disp(B,"width of air base in m")
clear()
