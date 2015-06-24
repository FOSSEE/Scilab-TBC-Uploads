// Variable declaration
p = 0.2
n = 100 

// Calculation



Mean = n*p
std_dev = sqrt(n*p*(1-p))

Upper = 15.5   // corresponding to chips = 15 -> 14.5 to 15.5 thus atmost = 15.5
Lower = 14.5

in_upper = (Upper-Mean)/std_dev
in_lower = (Lower-Mean)/std_dev

f_upper = 0.1292     // F value for F(upper) i.e. F(-1.13) = 0.1292
f_lower = 0.0838     // F value for F(upper) i.e. F(-1.38) = 0.0838

// Result
printf ( "Part(A) Probability: %.2f",f_upper)
printf ( "Part(B) Probability: %.2f",(f_upper-f_lower))
