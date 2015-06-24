clear;
clc;
r1 = 0.5*5;// inches
p = 5000;// lb/in^2
f = 5;// tons/in^2
b = (f + p/2240)/((1/r1^3) + (2/r1^3));
a = f - (b/r1^3);
//external diameter
r = (2*b/a)^(1/3);// inches
t = r - r1;// inches
printf('The thickness of the shell required, t = %.3f inches',t);

//the answer is approximated in the text book
