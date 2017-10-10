
clc; funcprot(0);
// Initialization of Variable
BC=66.0;//distance in m
AC=81.6;//distance in m
xb=3.0;//x coordinate of b
ya=1.25;//y coordinate of a
xa=3.3;//x coordinate of a
theta=23+43.0/60;//angle in degrees
//calculation
f=(xa+xb)/2/tan(theta*%pi/180)+sqrt((xa+xb)**2/4/(tan(theta*%pi/180))**2+xa*xb);
disp(round(f),"focal length in cm");
aa=atan(ya/sqrt(xa**2+f**2));
Va=AC*tan(aa);
ab=atan(-1.87/sqrt(xa**2+f**2));
Vb=-BC*tan(ab);
disp(round((Vb+Va)*100)/100,"horizontal distance in m");
disp("the answer varies slightly due to round off error");
clear()
