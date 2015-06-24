

//exapple 2.3 
clc; funcprot(0);
// Initialization of Variable
pi=3.14259;
theta=(44+30/60)*pi/180;//angle b/w two points
x1=68.24;//distance of first point
x2=58.48;//distance of 2nd point
f=(x1+x2)/tan(theta)/2+sqrt((x1+x2)^2/4/(tan(theta))^2+x1*x2);
disp(f,"focal length of lens in (mm):");
