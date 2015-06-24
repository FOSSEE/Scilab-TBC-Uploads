// Variable declaration
val1 = 0
val2 = 0

data1 = [0.63,2.64,1.85,1.68,1.09,1.67,0.73,1.04,0.68]
data2 = [3.71,4.09,4.11,3.75,3.49,3.27,3.72,3.49,4.26]
n1 = length(data1)
n2 = length(data2)

alpha = 0.05                        // level of significance
Mean1 = sum(data1)/length(data1)
Mean2 = sum(data2)/length(data2)

// Calculation
for i = 1:length(data1)
    val1 = val1 + (Mean1-data1(i))^2
end
    
for i = 1:length(data2)
    val2 = val2 + (Mean2-data2(i))^2
end
    
val1 = val1/(n1-1)
val2 = val2/(n2-1)

var = (val1 + val2)/(length(data1)-1 + length(data2)-1)

deg = ((val1/n1 + val2/n2)^2)/((val1/n1)^2)/(n1-1) + ((val2/n2)^2)/(n2-1)

t = (Mean1 - Mean2)/ sqrt( val1/n1 + val2/n2 )    // upper limit

// Result
if(t<-2.201) then
    printf ( "Null hypothesis rejected")
    printf ( "Mean product volume are different")
else
    printf ( "Null hypothesis accepted")
    printf ( "Mean product volume are same")
end    
