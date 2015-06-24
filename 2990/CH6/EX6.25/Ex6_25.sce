
clc; funcprot(0);
// Initialization of Variable
AB=300.0;//length in m
ab=102.4;//distance in mm
f=152.4;//focal length in mm
hab=320.0;//average elevation in m
d=7.8;//dispalcement in mm
r=75.4;//distance in mm
//calculation
H=hab+AB/ab*f;
h=d*H/r;
disp(h,"height difference in m")
clear()
