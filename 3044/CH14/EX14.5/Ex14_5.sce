// Variable declaration
alpha = 0.05                          // level of significance
n = 10
R = [5,8,6,10,3,7,9,4,2,1]
S = [5,8,6,10,4,7,9,3,2,1]

// Calculation
RS = 0

for i = 1:10
    RS = RS + R(i)*S(i)
end
rs = (RS - n*((n+1)^2)/4.0)/(n*(n^2-1)/12.0)

// Result
printf ( "rs value: %.3f i.e. there is strong association along an increasing curve",rs)
