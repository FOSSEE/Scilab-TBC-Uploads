// Variable declaration
alpha = 0.01         // level of significance
x = 27463            // in miles
Mean = 28000         // Mean( in miles)
std_dev = 1348       // standard deviation(in miles)
n = 40               // sample size

// Calculation
// null hypothesis is accepted if Z< -z(alpha)  and rejected if Z> -z(alpha), z(0.01) = 2.33
Z = (x-Mean) / (std_dev / sqrt(n))          // Z value corresponding to x

// Result
if(Z<-2.33) then
    printf ( "Null hypothesis rejected")
else
    printf ( "Null hypothesis accepted")
end
