// Variable declaration
n = 10

// Calculation
l = [ 45 36; 73 60; 46 44; 124 119; 33 35; 57 51; 83 77; 34 29; 26 24; 17 11]
l1 = l(:,1)
l2 = l(:,2)
diff = l1 - l2       // diffrence in values
Mean = mean(diff)
std_dev = 4.08
// null hypothesis is rejected if t > 1.833 for v = 9 degrees of freedom
t = (Mean - 0) / (std_dev / sqrt(n))     // t value

// Result
if(t > 1.833) then
    printf ( "null hypothesis is rejected")
    printf ( "Industrial safety program is effective")
else
    printf ( "null hypothesis is accepted")
    printf ( "Industrial safety program is effective")
end 
