// Variable declaration

alpha = 0.01         // level of significance
Mean = 180           // Mean( in pound)
n = 5                // sample size
std_dev = 5.7        // standard deviation(in pound)
x = 169.5            // in pound

// Calculation
// consider (1) null hypothesis if value=180 punds (2) alternative hypothesis if value < 180 pounds

t = (x-Mean) / (std_dev / sqrt(n))          // t value corresponding to x

// Result
if(t < -3.747) then
    printf ( "Null hypothesis rejected")
else
    printf ( "Null hypothesis accepted")
end

printf ( "The breaking strength is below specifications")
