

//exapple 2.19 
clc; funcprot(0);
// Initialization of Variable
B=200;
f=120;
p2=52.52;//parallax for top of pole
p1=48.27;//parallax for bottom of pole
delh=(p2-p1)/p2/p1*B*f;
disp(delh,"diference in elevation of two points in (m):")
