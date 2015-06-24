

//Example No.4.13.
//Page No.139.
clc;clear;
h = 6.626*10^(-34);//Planck's constant.
L = 1*10^(-10);//Width of the potential well -[m].
m = 9.1*10^(-31);//Mass of the electron.
E = ((6*h^(2))/(8*m*L^(2)));
printf("\n 1) The lowest energy of the system in joules is %3.3e eV",E);
E = (E/(1.6*10^(-19)));
printf("\n 2) The lowest energy of the system is  %.2f eV",E);
disp('3) Quantum numbers are,');
n = 1;
l = 0;
ml = 0;
ms = 0.5;
ms1 = -0.5;
printf("\ni)n = %.0f",n);
printf(" , l = %.0f",l);
printf(" , ml = %.0f",ml);
printf(" , ms = %.1f",ms);
printf("\nii)n = %.0f",n);
printf(" , l = %.0f",l);
printf(" , ml = %.0f",ml);
printf(" , ms1 = %.1f",ms1);
n=2;
printf("\niii)n = %.0f",n);
printf(" , l = %.0f",l);
printf(" , ml = %.0f",ml);
printf(" , ms = %.1f",ms);
