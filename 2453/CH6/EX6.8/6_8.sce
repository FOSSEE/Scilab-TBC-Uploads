//To calculate the resultant voltage across capacitors
Q = 2*10^-10;       //charge, coulomb
d = 4;     //plate seperation, mm
d = d*10^-3;      //plate seperation, m
epsilon_r = 3.5;    //dielectric constant
A = 650;     //area, mm^2
A = A*10^-6;     //area, m^2
epsilon0 = 8.85*10^-12;
V = Q*d/(epsilon0*epsilon_r*A);       //voltage across capacitors, V
printf("resultant voltage across capacitors is %5.2f V",V);
