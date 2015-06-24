clear;
clc;
d = 30;// inches
H = 300;// feet
w = 62.5;
f = 2800;
//intensity of water pressur
p = w*H/144;// lb/in^2
t_limit = p*d/(2*f);// inches
printf('Thickness of metal required is %.4f inches',t_limit);

//the answer is correct only, but it is approximated in the text book.
