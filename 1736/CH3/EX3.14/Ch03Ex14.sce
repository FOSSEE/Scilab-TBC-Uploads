// Scilab Code Ex3.12: Page-93 (2006)
clc; clear;
Lu = cell(6,5);  // Declare a matrix of 6X5
Lu(1,1).entries = 0;
Lu(1,2).entries = 5.58;
Lu(1,3).entries = 3.517;
Lu(1,5).entries = 0.750;
Lu(2,1).entries = 36;
Lu(2,2).entries = 5.409;
Lu(2,3).entries = 3.440;
Lu(2,5).entries = 0.560;
Lu(3,1).entries = 103;
Lu(3,2).entries = 5.213;
Lu(3,3).entries = 3.341;
Lu(3,5).entries = 0.492;
Lu(4,1).entries = 157;
Lu(4,2).entries = 5.067;
Lu(4,3).entries = 3.259;
Lu(4,5).entries = 0.388;
Lu(5,1).entries = 191;
Lu(5,2).entries = 4.987;
Lu(5,3).entries = 3.217;
Lu(5,5).entries = 0.357;
Lu(6,1).entries = 236;
Lu(6,2).entries = 4.921;
Lu(6,3).entries = 3.179;
Lu(6,5).entries = 0.331;
V0 = 3*sqrt(3)/2*Lu(1,3).entries^2*Lu(1,2).entries;
V = zeros(6);   // Declare volume array
printf("\n______________________________________________________________");
printf("\nP(kbar)    c(angstrom)     a(angstrom)    gamma_G      nu_G   ");
printf("\n______________________________________________________________");
for i=1:1:6
   V(i) = 3*sqrt(3)/2*Lu(i,3).entries^2*Lu(i,2).entries;
   Lu(i,4).entries = Lu(i,5).entries*V(i)/V0+2/3*(1-V(i)/V0)^(1/2);
printf("\n%3d        %5.3f           %5.3f          %5.3f        %5.3f", Lu(i,1).entries, Lu(i,2).entries, Lu(i,3).entries, Lu(i,4).entries, Lu(i,5).entries);
end
printf("\n______________________________________________________________");

cnt = 0;
printf("\n________________________");
printf("\nP(kbar)       Theta_D(K)");
printf("\n________________________");
for i=1:1:6
    theta_D = exp(integrate('-1*Lu(i,5).entries*exp(x)/V0-2/3*(1-exp(x)/V0)^(1/2)', 'x', -0.8+cnt, log(V(i)/1000000)));
    cnt = cnt + 0.01;
    printf("\n%3d             %3.0f", Lu(i,1).entries, theta_D);
end
printf("\n________________________");

// Result 
// ______________________________________________________________
// P(kbar)    c(angstrom)     a(angstrom)    gamma_G      nu_G   
// ______________________________________________________________
//   0        5.580           3.517          0.750        0.750
//  36        5.409           3.440          0.699        0.560
// 103        5.213           3.341          0.679        0.492
// 157        5.067           3.259          0.615        0.388
// 191        4.987           3.217          0.602        0.357
// 236        4.921           3.179          0.591        0.331
// ______________________________________________________________ 
// ________________________
// P(kdbar)       Theta_D(K)
// ________________________
//   0             185
//  36             195
// 103             210
// 157             222
// 191             230
// 236             237
// ________________________ 
