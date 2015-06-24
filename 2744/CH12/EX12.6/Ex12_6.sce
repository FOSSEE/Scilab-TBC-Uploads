clear;
clc;
HP = 3000;
RPM = 60;
f = 12000;//lb/in^2
rho = 480;//lb. per sq. foot
k = 3/4;// k = d/D 
T = HP*33000*12/(2*%pi*RPM);// lb-inches
D1 = (T*16/(f*%pi))^(1/3);//inches
D2 = (T/((1+k^2)*(1-k^2)*%pi*f/16))^(1/3);//inches
d = k*D2;// inches
w1 = 0.25*%pi*D1^2 *rho/144 ;// lb-wt
w2 = 0.25*%pi*(D2+d)*(D2-d)*rho/144 ;// lb-wt
w = w1-w2;// lb-wt
n = (w/w1)*100;
printf('The saving in weight per foot run is w = %d lb-wt',w);
printf('\n Percentage saving is %.2f',n);

//there is a minute error in the answer given in textbook.
