// Variable declaration
s_square = 0.25     // mean square error
v = 10      // degree of freedom
t_thr = 2.228       // theoritical value of t at 0.025
b = 2
r = 3

// Calculation
l = [3.07, 2.30;7.17, 5.53;10.80, 7.33]
a = l(:,1)
b = l(:,2)

l1 = [a(1),b(1)]
l2 = [a(2),b(2)]
l3 = [a(3),b(3)]

// Result
// first confidence interval
y1 = mean(l1)-mean(l2) - 2.228*( sqrt(0.25 * (2.0/6)) )
y2 = mean(l1)-mean(l2) + 2.228*( sqrt(0.25 * (2.0/6)) )
printf ("first confidence interval: ( %.2f , %.2f )",y1,y2)

// second confidence interval
y1 = mean(l1)-mean(l3) - 2.228*( sqrt(0.25 * (2.0/6)) )
y2 = mean(l1)-mean(l3) + 2.228*( sqrt(0.25 * (2.0/6)) )
printf ( "second confidence interval: ( %.2f , %.2f )",y1,y2)

// third confidence interval
y1 = mean(l2)-mean(l3) - 2.228*( sqrt(0.25 * (2.0/6)) )
y2 = mean(l2)-mean(l3) + 2.228*( sqrt(0.25 * (2.0/6)) )
printf ( "third confidence interval: ( %.2f , %.2f )",y1,y2)

// confidence interval for single difference in mean
y1 = mean(a)-mean(b) - 2.228*( sqrt(0.25 * (2.0/9)) )
y2 = mean(a)-mean(b) + 2.228*( sqrt(0.25 * (2.0/9)) )
printf ( "interval for single difference in mean(in hours): ( %.2f , %.2f )",y1,y2)
