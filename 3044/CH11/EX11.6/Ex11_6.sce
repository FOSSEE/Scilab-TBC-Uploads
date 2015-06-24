// Variable declaration
l = [20 0.18;60 0.37;100 0.35;140 0.78;180 0.56;220 0.75;260 1.18;300 1.36;340 1.17;380 1.65]
alpha = 0.05
beta = 0.0
x0 = 190

// Calculation
x = l(:, 1)
y = l(:,2)
s1 = sum((x.^2)) - (sum(x))^2/10.0
s2 = sum(x.*y) - (sum(x)*sum(y))/10.0
s3 = sum((y.^2)) - (sum(y))^2/10.0

t_thr = 2.306   // theoritical t-value t(0.025)

Slope = s2/s1

Sum_of_square = (s3 - (s2^2)/s1)/8
Se = sqrt(Sum_of_square)

c = sum(y)/10.0 - Slope*sum(x)/10.0

y1 = (c+Slope*x0) - (t_thr*Se)*sqrt(1.0/10 + ((x0-mean(x))^2)/(s1))   // Lower limit
y2 = (0.8) + (t_thr*Se)*sqrt(1.0/10 + ((x0-mean(x))^2)/(s1))   // Lower limit


// Result
printf ( "95%% confidence interval(in gallons): ( %.3f , %.2f)",y1,y2)
