// Scilab Code Ex7.2: Page-248 (2014)
clc; clear;
a0 = 1;    // For simplicity assume Bohr radius to be unity, m
NE = 1/(64*%pi*a0^5)*integrate('r^4*exp(-r/a0)', 'r', 0, 15)*integrate('sin(t)^3', 't', 0, %pi)*integrate('p^0', 'p', 0, 2*%pi);
if round(NE) == 1  then
    printf("\nThe hydrogen wave function <211| is normalized");
else
    printf("\nThe hydrogen wave function <211| is not normalized");
end

// Result
// The hydrogen wave function <211| is normalized 