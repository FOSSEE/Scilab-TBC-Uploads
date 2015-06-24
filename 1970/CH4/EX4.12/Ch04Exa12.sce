// Scilab code Exa4.12 : : Page 181 (2011)
// Defining an array
clc; clear;
n = cell (1,6); // Declare the cell matrix of 1X6 
n(1,1).entries = 10000;
n(2,1).entries = 10200;
n(3,1).entries = 10400;
n(4,1).entries = 10600;
n(5,1).entries = 10800;
n(6,1).entries = 11000;
g = 0; // 
k = 6;
H = 0;
for i = 1:k;
    g = g + n(i,1).entries
end;
N = g/k; // Mean of the count
D = sqrt(N);
for i = 1:k;
 H = H+((n(i,1).entries-N)*(n(i,1).entries-N))   
end;
S_D = round(sqrt(H/(k-1)));
printf("\nStandard deviation of the reading  : %d", S_D);
delta_N = sqrt(N);
if (S_D > delta_N) then
    printf("\nThe foil cannot be considered uniform..!");
else
    printf("\nThe foil can be considered uniform.");
end

// Result
// Standard deviation of the reading  : 374
// The foil cannot be considered uniform..! 