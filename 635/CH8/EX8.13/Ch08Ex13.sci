// Scilab code Ex8.13: Bragg angle and the indices of diffraction of Powder Lines Page 285 (2010)
n = 1;    // Cosider first order diffraction
a = 6e-010;    // First lattice parameter of direct lattice, m
lambda = 1.54e-010;    // Wavelength used in diffraction of X-rays by Powder Method, m
// Declare a function for converting angle into degrees and minutes
function [d,m] = degree_minute(n)    
         d = int(n);
         m = (n-int(n))*60;
endfunction  
// Calculate the hkl and hence interpalnar spacing 'd' for three lowest powder lines
printf("\nThe Bragg angles and the indices of diffraction for the three lowest powder lines are:");
for h = 0:1:2
    for k = 0:1:2
        for l = 0:1:1
            if (modulo(h,2) == 1 & modulo(k,2) == 1 & modulo (l,2) == 1) | (modulo(h,2) == 0 & modulo(k,2) == 0 & modulo (l,2) == 0) then
                if (h <> 0) then
                    N = h^2+k^2+l^2;
                    d = a/sqrt(N);    // Interplanar spacing, metre
                    theta = asind(n*lambda/(2*d));
                    [deg, mint] = degree_minute(theta);    // Call conversion function
                    printf("\nd[%d%d%d] = %4.2e and theta[%d%d%d] = %d deg %d min", h, k, l, d, h, k, l, deg, mint);
                end
            end
         end      
    end
end    
// Result
// The Bragg angles and the indices of diffraction for the three lowest powder lines are:
// d[111] = 3.46e-010 and theta[111] = 12 deg 50 min
// d[200] = 3.00e-010 and theta[200] = 14 deg 52 min
// d[220] = 2.12e-010 and theta[220] = 21 deg 17 min