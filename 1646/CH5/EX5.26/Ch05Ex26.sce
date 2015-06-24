// Scilab Code Ex5.26: Page:310 (2011)
clc;clear;
n = 5;....// Order for given wavelength
m = [4 5 6 7 8];    // Orders of spectral lines in the visible range
lambda1 = 6000;....// Wavelength of the spectral line in visible range, angstrom
lambda2 = zeros(5);
printf("\n The spectral lines in visible ranges are:\n");
for i=1:1:5
l2 = (n*lambda1)/m(i);
lambda2(i) = l2;    // Preserve the lambda value
printf("%4d angstrom\n", ceil(l2));
end
printf("\nThe other spectral lines in the visible range 4000A to 7000A are");
for i=1:1:5
    if lambda2(i) < 7000 & lambda2(i) > 4000 then
        if lambda2(i) == 6000 then
            continue
        end
          printf("\n%4dA", ceil(lambda2(i)));
    end
end

// Result
// The spectral lines in visible ranges are:
// 7500 angstrom
// 6000 angstrom
// 5000 angstrom
// 4285 angstrom
// 3750 angstrom

// The other spectral lines in the visible range 4000A to 7000A are
// 5000A
// 4286A 
