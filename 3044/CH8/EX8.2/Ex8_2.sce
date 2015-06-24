// Variable declaration
Mean = [0.136,0.083]
size = [32,32]
variance = [0.004,0.005]

alpha = 0.05             // level of significance

// Calculation
Z = (Mean(1) - Mean(2) - alpha)/(sqrt( variance(1)^2/size(1) + variance(2)^2/size(2) ))              // Lower limit

// Result
if(Z>1.645) then
    printf ( "Null hypothesis rejected")
    printf ( "The data substantiate the claim")
else
    printf ( "Null hypothesis accepted")
    printf ( "The data does not substantiate the claim")
end
