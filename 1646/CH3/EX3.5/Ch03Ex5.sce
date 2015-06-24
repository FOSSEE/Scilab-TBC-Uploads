// Scilab Code Ex3.5: Page:134 (2011) 
clc;clear;
n = 5;  // Number of distinguishable particles which are to be distributed among cells
n1 = [5 4 3 3 2];   // Possible occupancy of particles in first cell
n2 = [0 1 2 1 2];   // Possible occupancy of particles in second cell
n3 = [0 0 0 1 1];   // Possible occupancy of particles in third cell
BIG_W = 0;
printf("\n_____________________________________");
printf("\nn1      n2      n3      5/(n1!n2!n3!)");
printf("\n_____________________________________");
for i = 1:1:5
W = factorial(n)/(factorial(n1(i))*factorial(n2(i))*factorial(n3(i)));
if BIG_W < W then
    BIG_W = W;
    ms = [n1(i) n2(i) n3(i)];
end
printf("\n%d      %d      %d          %d", n1(i), n2(i), n3(i), W);
end
printf("\n_____________________________________");
printf("\nThe macrostates of most probable distribution with thermodynamic probability %d are:", BIG_W);
printf("\n(%d, %d, %d), (%d, %d, %d) and (%d, %d, %d)", ms(1), ms(2), ms(3), ms(2), ms(3), ms(1),ms(3), ms(1), ms(2));

// Result
// _____________________________________
// n1      n2      n3      5/(n1!n2!n3!)
// _____________________________________
//5      0      0          1
// 4      1      0          5
// 3      2      0          10
// 3      1      1          20
// 2      2      1          30
// _____________________________________
// The macrostates of most probable distribution with thermodynamic probability 30 are:
// (2, 2, 1), (2, 1, 2) and (1, 2, 2) 
