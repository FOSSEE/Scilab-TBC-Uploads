
// Calculation
l = [20 0.18; 60 0.37; 100 0.35; 140 0.78; 180 0.56; 220 0.75; 260 1.18; 300 1.36; 340 1.17; 380 1.65]
x = l(:,1)
y = l(:,2)
s1 = sum((x^2)) - (sum(x))^2/10.0
s2 = sum(x.*y) - (sum(x)*sum(y))/10.0
s3 = sum((y^2)) - (sum(y))^2/10.0

Slope = s2/s1

c = sum(y)/10.0 - Slope*sum(x)/10.0

// For x = 190 cm/s
value = c + Slope*190

Sum_of_square = s3 - (s2^2)/s1


// Result
printf ( "Evaporation coefficient: %.1f mm(square)/s",value)
printf ( "sum of squares: %.5f",Sum_of_square)
