// Variable declaration
val = 0
Mine1 = [8260,8130,8350,8070,8340]

// Calculation
Mean1 = sum(Mine1)/length(Mine1)

for i = 1:length(Mine1)
    val = val + (Mean1-Mine1(i))^2
end
    
var = (val)/(length(Mine1)-1)
std_dev = sqrt(var)

d2 = 2.326   // for n=5

est_std_dev = (max(Mine1)-min(Mine1))/d2

// Result
printf ( "Estimated standard deviation: %.1f",est_std_dev)
printf ( "Actual standard deviation: %.1f",std_dev)
