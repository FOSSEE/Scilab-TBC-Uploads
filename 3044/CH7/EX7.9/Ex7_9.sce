//Variable declaration
l = [5.57,5.76,4.18,4.64,7.02,6.62,6.33,7.24,5.57,7.89,4.67,7.24,6.43,5.59,5.39]
          
// calculation
Mean = mean(l)
var = 0

for i = 1:length(l)
    var = var + (l(i)-Mean)^2
end
var = var/length(l)

coff = sqrt(var)/Mean

// Results
printf ( "Maximum likelihood estimates of Mean : %.3f ,  Variance : %.3f",Mean,var)
printf ( "Cofficient of variation: %.3f",coff)          
