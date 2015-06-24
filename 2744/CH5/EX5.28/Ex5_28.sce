clear;
clc;
b = 9/2;// inches
D = 12;// inches
d = 10;// inches
t = 1/2;// inches
f_w = 1000;// lb/in^2
m = 18;//m = E_s/E_w
f_t = m*d*f_w/D ;// lb/in^2
M_w = f_w*(1/6)*2*b*D^2;// lb-inches
M_s = f_t*(1/6)*t*d^2;// lb-inches
M = M_w + M_s;// lb-inches
printf('Skin stresse in steel plate is, M_s = %d lb-inches\n The total moment of resistance is M = %d lb-inches',M_s,M);
