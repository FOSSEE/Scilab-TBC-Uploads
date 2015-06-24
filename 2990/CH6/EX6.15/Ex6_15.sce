
clc; funcprot(0);
// Initialization of Variable
d=230.0;//square side in mm
f=152.4//focal length in mm
pl=0.6;//end lap
//calculation
k=(1-pl)*d/f;
V=k/0.15;
disp(V,"vertical exaggeration is")
clear()
