clear;
clc;

//page no.45

l = 8;//feet
b = 10;// feet
F_h = 0.5*l*b*62.4*(b+2.5);// lb
x = 83.2/(40*(b+2.5));// feet
F_v = (b+5)*62.4*40-(l*62.4*(25 - 0.25*%pi*25));// lb
F = sqrt(F_h^2 + F_v^2);// lb
e = (2680*3.91 + 37440*(0.25*b))/F_v ;// feet
theta = 180*atan(F_v/F_h) /%pi;// degrees
x_p = 0.25*b-x;// feet
printf('Magnitude of resultant force is %d lb',F);
printf('\n Theta = %d degrees',theta);
printf('\n Location is %.3f feet above and  %.2f feet to the right of B',x_p,e);

//there are errors in the answer given in textbook
