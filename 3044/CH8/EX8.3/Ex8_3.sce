// Variable declaration

alpha = 0.05       //level of significance
n1 = 40            // size of sample-1
n2 = 40            // size of sample-2
std_dev1 = 27      // standard deviation-1
std_dev2 = 31      // standard deviation-2
Mean1 = 1647       // Mean of sample-1 ( in hours) 
Mean2 = 1638       // Mean of sample-2 ( in hours) 

// Calculation
// null hypothesis accepted if z>1.645  else rejected
Z = (Mean1 - Mean2) / (sqrt( (std_dev1^2)/(n1) + (std_dev2^2)/(n2) ))            // Z value

// Result

if(Z>1.645) then
    printf ( "Null hypothesis rejected")
    printf ( "observed difference between two samples is significant")
else
    printf ( "Null hypothesis accepted")
    printf ( "observed difference between two samples is not significant")
end
