// Variable declaration
val1 = 0
val2 = 0

Mine1 = [8260,8130,8350,8070,8340]
Mine2 = [7950,7890,7900,8140,7920,7840]

alpha = 0.01                        // level of significance
deg = length(Mine1) + length(Mine2) - 2   // Degree of freedom

Mean1 = sum(Mine1)/length(Mine1)
Mean2 = sum(Mine2)/length(Mine2)
 
// Calculation
for i = 1:length(Mine1)
    val1 = val1 + (Mean1-Mine1(i))^2
end
    
for i = 1:length(Mine2)
    val2 = val2 + (Mean2-Mine2(i))^2
end

var = (val1 + val2)/(length(Mine1)-1 + length(Mine2)-1)
std_dev = sqrt(var)

t = (Mean1 - Mean2)/(std_dev*(sqrt(1.0/length(Mine1) + 1.0/length(Mine2))))

// Result
if(t>3.250) then
    printf ( "Null hypothesis rejected")
    printf ( "Average heat producing capacity is not same")
else 
    printf ( "Null hypothesis accepted")
    printf ( "Average heat producing capacity is same")
end
