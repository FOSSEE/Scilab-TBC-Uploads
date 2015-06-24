// Calculation
l = [1 98.2 ; 2 91.7 ; 5 81.3 ; 10 64.0 ; 20 36.4 ; 30 32.6 ; 40 17.1 ; 50 11.3]
x = l(:,1)
y = l(:,2)
logy = log10(y)

x_sum = sum(x)
x_sq_sum = sum((x.^2))
logy_sum = sum(logy)
xlogy_sum = sum(x.*logy)

s1 = (x_sq_sum) - (x_sum)^2/8.0
s2 = (xlogy_sum) - (x_sum)*(logy_sum)/8.0

plot(x, logy,"ro")
title("Logrithmic Graph")
xlabel("x")
ylabel("logy")
c = 2.0002
d = -0.0188
// equation logy = c - d*x

logy = c - d*25

// taking antilog   y = 33.9%

// Result
printf ( "%% of high performance tries that will last at least 25000 miles: 33.9%%")
