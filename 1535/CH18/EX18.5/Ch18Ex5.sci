// Scilab Code Ex18.5: Reverbration time for the hall : Page-362 (2010)
V = 475;      // Volume of the hall, metre cube
s = [200, 100, 100];    // Area of wall, floor and ceiling of the hall resp., metre square
T = 4;    // Reverbration time of the hall, s
alpha = [0.025, 0.02, 0.55];    // Absorption coefficients of the wall, ceiling and floor resp., OWU per metre square
alpha_s = 0;
for i=1:1:3
    alpha_s = alpha_s + alpha(i)*s(i);
end
T = 0.167*V/alpha_s;    // Sabine Formula for reverbration time, s
printf("\nThe reverbration time for the hall = %4.2f s", T);

// Result
// The reverbration time for the hall = 1.28 s 