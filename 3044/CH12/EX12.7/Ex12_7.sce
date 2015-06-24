// Variable declaration
alpha = 0.06
k = 3
t_thr = 2.681    // t value for alpha/(k*(k-1))  and 12 degrees of freedom

// Calculation
l = [0.99  1.19  0.79  0.95  0.90 ; 1.11  1.53  1.37  1.24  1.42 ; 0.83  0.68  0.94  0.86  0.57]
a = l(:, 1)
b = l(:, 2)
c = l(:, 3)
d = l(:, 4)
e = l(:, 5)

l1 = [a(1) b(1) c(1) d(1) e(1)]
l2 = [a(2) b(2) c(2) d(2) e(2)]
l3 = [a(3) b(3) c(3) d(3) e(3)]
MSE = 0.0234    // estimated s_square value

// we need to find three confidence intervals

// Result
// for first interval
y1 = mean(l2)-mean(l1) - 2.681*sqrt( 0.0234*(1.0/5 + 1.0/5) )
y2 = mean(l2)-mean(l1) + 2.681*sqrt( 0.0234*(1.0/5 + 1.0/5) )
printf ( "first confidence interval:( %.3f , %.3f)",y1,y2)

// for second interval
y1 = mean(l2)-mean(l3) - 2.681*sqrt( 0.0234*(1.0/5 + 1.0/5) )
y2 = mean(l2)-mean(l3) + 2.681*sqrt( 0.0234*(1.0/5 + 1.0/5) )
printf ( "second confidence interval:( %.3f , %.3f)",y1,y2)

// for third interval
y1 = mean(l1)-mean(l3) - 2.681*sqrt( 0.0234*(1.0/5 + 1.0/5) )
y2 = mean(l1)-mean(l3) + 2.681*sqrt( 0.0234*(1.0/5 + 1.0/5) )
printf ( "third confidence interval:(  %.3f , %.3f )",y1,y2)
