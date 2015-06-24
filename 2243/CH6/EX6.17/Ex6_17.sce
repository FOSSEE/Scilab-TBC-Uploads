clc();
clear;
//Given:
//(a) Marble
h = 6.625*10^-34; //planck's constant in Js
m1 = 10; // mass in g
L1 = 10; // width in cm
// m1 = 10*10^-3 kg , 1 g = 1.0*10^-3 kg  and L1 = 10*10^-2 m , 1 cm = 1.0*10^-2 m
printf("(a)Marble \n\n");
for n1 = 1:3
    En1 = (n1^2*h^2)/(8*m1*10^-3*(L1*10^-2)^2); // Energry  in J
    printf("E_%d : %.1f x 10^-64 J\n",n1,En1*10^64);
end
//(b) For an electron
m2 = 9.1*10^-31; //electron mass in kg
L2 = 1 ; // width in A
//L2 = 1*10^-10 m , 1 A = 1.0*10^-10 m
printf("(b)For an electron \n\n");
for n2 = 1:3
    En2 = (n2^2*h^2)/(8*m2*(L2*10^-10)^2); // Energry  in J
    printf("E_%d : %.1f eV\n",n2,(En2*6.24150934*10^18)); // 1J = 6.24150934*10^18  eV
end

















