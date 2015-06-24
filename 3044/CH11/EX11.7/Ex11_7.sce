// Variable declaration
l = [20 0.18;60 0.37;100 0.35;140 0.78;180 0.56;220 0.75;260 1.18;300 1.36;340 1.17;380 1.65]
air_vel = 190        // air velocity in cm/s

// Calculation
x = l(:,1)
y = l(:,2)

s1 = sum((x.^2)) - (sum(x))^2/10.0
s2 = sum(x.*y) - (sum(x)*sum(y))/10.0
s3 = sum((y^2)) - (sum(y))^2/10.0

Slope = s2/s1

c = sum(y)/10.0 - Slope*sum(x)/10.0

// 95% confidence interval
t_thr = 2.306       // at 0.025 and v = 8

s = (s3 - (s2)^2/s1) / 8       // estimation of sigma square
s = sqrt(s)

// For x = 190 cm/s
value = c + Slope*190

y1 = value - ( (t_thr)*s* sqrt(1 + 1.0/10 + (air_vel - sum(x)/10.0)^2/(s1) ) )
y2 = value + ( (t_thr)*s* sqrt(1 + 1.0/10 + (air_vel - sum(x)/10.0)^2/(s1) ) )

// Result
printf ( "95%% confidence interval: ( %.2f , %.2f )",y1,y2)
