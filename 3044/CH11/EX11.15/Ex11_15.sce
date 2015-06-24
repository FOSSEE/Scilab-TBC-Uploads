// Variable declaration
r = 0.732        // correlation coff;
n = 10          

// Calculation
// 95% confidence interval
Z1 = 0.5*log((1+r)/(1-r))       // Z value corresponds to r=0.7
z_prt = sqrt(n-3)*Z1

z_thr = 1.96           // at 0.025

// Result
printf ( "Practical Z-value: %.2f",z_prt)
if(z_prt > z_thr) then
    printf ( "null hypothesis must be rejected")
    printf ( "Relationship between morning & afternoon times it takes a mechanic to assemble the machinery, EXISTS")
else
    printf ( "null hypothesis is accepted")
    printf ( "Relationship between morning & afternoon times it takes a mechanic to assemble the machinery, does not EXIST")
end

