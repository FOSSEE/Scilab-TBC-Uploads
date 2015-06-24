// Scilab Code Ex 10.12 Increase in electrical resistivity of a metal with temperature: Page-349 (2010)
function [res] = final_res(T)
    alpha = 0.0001;    // Temperature co-efficient of resistance
    resi = 0;        // Initial resistivity of the nichrome which is an arbitray 
    //constant and can be taken to be zero
res = resi + alpha*T;    // Final resistivity of the nichrome as function of T 
endfunction                     
T1 = 300;    // Initial temperature of nichrome, K
T2 = 1000;    // Final temperature of nichrome, K
res300 = final_res(T1); // Final resistivity of the nichrome at 300 K 
res1000 = final_res(T2); // Final resistivity of the nichrome at 1000 K 
percent_res = (res1000 - res300)*100;    // Percentage increase in resistivity 
printf("\nThe percentage increase in the resistivity of nichrome is %d percent", percent_res);
// Result
// The percentage increase in the resistivity of nichrome is 7 percent 


