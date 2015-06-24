clear;
clc;
d = 6;// feet
p = 180;// lb/in^2
f = 6;// tons
n = 70/100;// efficiency
d1 = 1;// inches
f_s = 5;// tons/in^2
f_b = 10;// tons/in^2
t = p*d/(2*f*n);// inches
// t = 0.6889 inches, say 0.75 inches
t = 0.75;//inches
P_s = 2*0.25*%pi*d1^2*f_s;// tons
P_b = d1*t*f_b;// tons
p_limit = 2*P_b/(t*f) + d1;// inches
//p_limit = 4.33 inches, make it 4 inches
p = round(p_limit);// inches
n1 = (p-d1)/p;// efficiency
printf('Pitch = %.2f inches, make it %d inches.',p_limit,p);
printf('\n The efficiency of the joint will be %d percentage aganist the assumed value of %d percentage.',n1*100,n*100);
