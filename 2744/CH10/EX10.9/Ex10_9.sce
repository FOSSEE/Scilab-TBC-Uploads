clear;
clc;
d = 5;// inches
p = 3;// tons/in^2
f = 8;// tons/in^2
x = 0.5*d;// inches
b = (p+f)/(2/x^2);
a = f-(b/x^2); 
r = sqrt(b/a);//outer radius
t = r-0.5*d;//thickness
D = 2*t+d;//outer diameter
printf('The thickness of metal necessary, t = %.3f inches',t);
printf('\n the outer diameter will be, D = %.1f inches',D);

//the answer is correct, but it is approximated in the text book.
