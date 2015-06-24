

//exapple 2.12 
clc; funcprot(0);
// Initialization of Variable
f=20/100;//focal length
l=250;//length of line
lp=8.5/100;//length of line in photograph
H=l*f/lp;//height of camera above datum
r=6.46;//distace of image of top of the tower
d=0.46;//releif displacement
h=d*H/r;
disp(h,"height of tower above its base in (m)")
