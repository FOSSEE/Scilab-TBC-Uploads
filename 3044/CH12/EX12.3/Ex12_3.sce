// Variable declaration
l1 = [90,82,79,98,83,91]
l2 = [105,89,93,104,89,95,86]
l3 = [83,89,80,94]

alpha = 0.05            // level of significance
f_thr = 3.74            // F value at 0.05 for (3-1,17-3) degrees of freedom

// Calculation
Sum = sum(l1)+sum(l2)+sum(l3)
total = sum((l1.^2)) + sum((l2.^2)) + sum((l3.^2))
sst = total - (Sum^2)/17
sstr = (sum(l1))^2/6.0 + (sum(l2))^2/7.0 + (sum(l3))^2/4.0 - (Sum^2)/17.0
sse = sst - sstr
f_prt = 2.33        // calculated value

// Result
printf ( "Since f_thr > f_prt so null hypothesis can not be rejected,we cant conclude that there is a difference in mean shear strength of bolts ")
