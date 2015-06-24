// Variable declaration
val = 0
data1 = [27,23,64,44,30,75,26,124,54,30,14]
data2 = [15,13,22,29,31,64,30,64,56,20,21]
y = [1,1,1,1,1,1,1,1,1,1.1,1]
d = []

alpha = 0.05                        // level of significance
for i = 1:11
    d(i) = data1(i)-data2(i)
end

n = length(d)    
Mean = sum(d)/(length(d))

// Calculation
for i = 1:length(d)
    val = val + (Mean-d(i))^2
end    

val = val/(n-1) 
deg = n-1

t = 2.228         // t-value for 10 degree of freedom

y1 = (Mean - t*(sqrt(val/n)))      // Lower limit
y2 = (Mean + t*(sqrt(val/n)))      // upper limit


// Result
printf ( "95%% confidence interval: ( %.2f , %.2f )",y1,y2)
disp(length(d),length(y))
plot(d,y,"ro")
title("Dot Diagram")
