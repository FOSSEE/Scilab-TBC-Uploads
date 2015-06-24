//clear//
//Caption:Program to calculate percent in decrease of number of modes
//Example 3.4
//page 99
clear;
clc;
alpha = 2; //graded index profile
n2 = 1.5; //cladding 
Lamda = 1.3e-06; //wavelength
R = 0.01; //bend radius of curvature
a = 25e-06;// core radius
delta = 0.01; //core-cladding index profile
k = 4.83e06; //propagation constant
disp(k,'k = ')
part1 = (2*a/R)+floor((3/(2*n2*k*R))^(2/3));
part2 = (alpha+2)/(2*alpha*delta);
Neff_Ninf = 1-part1*part2;
disp('number of modes decreased by')
disp('Percent  in graded-index fiber',Neff_Ninf*100)
//RESULTS
//number of modes decreased by 50 Percent  in graded-index fiber  
