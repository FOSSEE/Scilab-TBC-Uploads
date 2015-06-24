clc
//Example 18.4
//Calculate the Kolmogorov scale
v=1.613*10^(-4)//ft^2/s
eta=0.21//ft^2/s^3
kolmogorov_scale=(v^3/eta)^0.25//ft
printf("The Kolmogorov scale is %f ft",kolmogorov_scale);