clear;
clc;
D = 5;// inches
HP = 120;
RPM = 150;
b = 5;// inches
h = 1;//inch
n = 6;// no. of bolts
d = 3/4;// inches
T = HP*33000*12/(2*%pi*RPM);// lb-inches
f_s = T*16/(%pi*27);
f_k = T/(b*h*2*d);
f_b = T/(n*0.25*%pi*d^2 * b);// lb-inches
printf('f_s = %d lb/in^2\n f_k = %d lb/in^2\n f_b = %d lb/in^2',f_s,f_k,f_b);

//there are errors given in the answers given in the textbook
