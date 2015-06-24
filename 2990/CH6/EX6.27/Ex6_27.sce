
clc; funcprot(0);
// Initialization of Variable
B=180.0;//height in m
f=120.0;//focal length in mm
pa=54.32//parallax in mm
pb=46.35;//parallax in m
//calculation
delH=B*f/pa/pb*(pa-pb);
disp(delH,"height difference in m")
clear()
