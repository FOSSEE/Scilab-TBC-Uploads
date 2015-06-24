clear;
clc;

//page no.281
d = 6;//inches
v = 15;//fps
l = 100;//ft
h_L = 17.5;//ft
f = h_L*(d/(12*l))*(2*32.2/v^2);
V_f = v*sqrt(f/8);
printf('The friction velocity = %.2f fps',V_f);

//there is an error in the answer given in textbook
