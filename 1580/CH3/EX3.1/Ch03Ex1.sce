// Scilab Code Ex3.1 : Page-3.4 (2004)
 // In a SC structure number of planes are having three arrangement (100),(110) and (111)
 clc;clear;
a =  1;     // For simplicity lattice constant is taken to be unity
A_100 = a^2;    // Area of the plane (100), mm^2
N_100 = 1/A_100;    //   Number of atoms along (100) plane, atoms per square mm
A_110 = sqrt(2)*a^2;    // Area of the plane (110), mm^2
N_110 = 1/A_110;    // //   Number of atoms along (110) plane, atoms per square mm
A_111 = 1/2*a*sqrt(2)*sqrt(2)*a^2*cosd(30);    // Area of the plane (110), mm^2
A_111t = 0.5;   //   Total no of atoms in (111) plane
N_111 = A_111t/A_111;    // //   Number of atoms along (110) plane, atoms per square mm
printf("\nNumber of atoms along (100) plane= %d /a^2 atoms per square mm", N_100);
printf("\nNumber of atoms along (110) plane= %f  atoms per square mm", N_110);
printf("\nNumber of atoms along (111) plane= %5.3f /a^2 atoms per square mm", N_111);
// Result 
// Number of atoms along (100) plane= 1 /a^2 atoms per square mm
//  Number of atoms along (110) plane= 0.707107  atoms per square mm
//  Number of atoms along (111) plane= 0.577 /a^2 atoms per square mm 
