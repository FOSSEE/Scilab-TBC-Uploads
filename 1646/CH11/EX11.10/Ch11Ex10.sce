// Scilab Code Ex 11.10: Page-568 (2011)
clc;clear;
function s = sine(x)
    s = x - x^3/factorial(3) + x^5/factorial(5) - x^7/factorial(7) + x^9/factorial(9);
endfunction

function s = cosine(x)
    s = 1 - x^2/factorial(2) + x^4/factorial(4) - x^6/factorial(6) + x^8/factorial(8);
endfunction
    
k = 1;  // For simplicity assume constant of proportionality to be unity, units
for theta = 1:1:45
alpha = k*cosd(theta);
b = k*sind(theta); 
    if alpha == b then
        phi = atand(b/alpha);
        break;
    end
end
//printf("\nThe phase difference between electric and magentic field vectors = %4.2f rad", phi); 


// Result
// The skin depth of an EM-wave in Al = 0.000010 m 
