clear;
clc;

//page no. 42

l1 = 4;// feet
b1 = 6;// feet
b2 = 6;// feet
l2 = 2.55;// feet
t = 1;// feet
F1 = 0.5*l1*b1*62.4*(0.5*l1 + t) ;// lb
F2 = 0.25*%pi*b2^2 *62.4*(l2 + t);// lb
a1 = l1*b2^3 /(36*0.5*b2*0.5*l1*b1);// feet
a2 = 70/((0.5*l2 + t)*28.3);// feet
l_p = (F1*(0.5*l1 + a1)+F2*(l2+a2))/(F1+F2) +1;//feet
x_p1 = (0.5*l1-a1) - a1*2/b2;// feet
M = integrate('(62.4/2)*(36-y^2)*(y+1)','y',0,6);// ft-lb
x_p2 = M/F2;// feet
x_p = (x_p2*F2 - F1*x_p1)/(F1+F2);// feet
printf('Total force on composite area is %d lb',F1+F2); 
printf('\n Vertical location of resultant force is %.2f ft below the water surface',l_p);
printf('\n Horizontal location of resultant force is %.3f ft right of the water surface',x_p);

//there are errors in the answer given in textbook
