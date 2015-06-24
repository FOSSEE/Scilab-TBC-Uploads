clc;
//page no 560
//prob no. 15.4.1
ht=200;//virtual height in km
a=6370;//in km
B_degree=20;
B_rad=20*%pi/180;//angle of elevation in degree
// The flat-earth approximation gives 
d=2*ht/tand(B_degree);
disp('km',d,'d=');
// By using radian measures for all angles
d=2*a*(((%pi/2)-B_rad)-(asin(a*cosd(B_degree)/(a+ht))));
disp('km',d,'d=');