//To calculate the dielectric displacement
V = 10;      //potential, V
d = 2*10^-3;      //plate seperation, m
E = V/d;     //electric field, V/m
epsilon_r = 6;
epsilon0 = 8.85*10^-12;
D = epsilon0*epsilon_r*E;       //dielectric displacement, C/m^2
printf("dielectric displacement in C/m^2 is");
disp(D);
