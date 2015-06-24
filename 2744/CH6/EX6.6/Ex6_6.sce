clear;
clc;
w = 550;// lb. per foot run
f = 1000;// lb/in^2
l = 20;// feet
d_limit = 15;// inches
E = 1.5*10^6;// lb/in^2
//central ddeflection
delta = (1/2);// inches
d = (5/24)*(f/E)*20*12/(1/(2*20*12));// inches
M = w*l*l*12/8;// lb-inches
b = M/(f*(1/6)*d^2);// inches
printf('A section with d = %d inches, b = %d inches will do.',round(d),round(b));
f1 = (1/(2*20*12))*(d_limit/(l*12))*E/(5/24);// lb/in^2
b = M/(f1*(1/6)*d_limit^2);// inches
printf('\n If the deapth of section is limited to %d inches, then \n f = %.1f lb/in^2\n b = %.1f inches',d_limit,f1,b);

//tha answer is correct only, but it is approximated in the text book.
