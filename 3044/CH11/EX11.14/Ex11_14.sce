// Variable Declaration
l = [11.1 10.9 ; 10.3 14.2 ; 12.0 13.8 ; 15.1 21.5 ; 13.7 13.2 ; 18.5 21.1 ; 17.3 16.4 ; 14.2 19.3 ; 14.8 17.4 ; 15.3 19.0]

// Calculation
x = l(:,1)
y = l(:,2)

s1 = sum((x.^2)) - (sum(x))^2/10.0
s2 = sum(x.*y) - (sum(x)*sum(y))/10.0
s3 = sum((y.^2)) - (sum(y))^2/10.0

// correlation coefficient
r = s2 / sqrt(s1*s3)

// Result
printf ( "around %.1f %% of the variation among the afternoon times is explained by the corresponding differenced among the morning times.",100*(r^2))  
