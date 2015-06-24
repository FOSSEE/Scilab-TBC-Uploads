// Additional solved numerical questions  , Example(set 1) 2 , pg 348
l=0.7*10^-3//length(in m)
E=8.8*10^10//youngs modulus(in N/m^2)
d=2800//density(in kg/m^3)
p=1//fundamental mode
n= p*sqrt(E/d)/(2*l)  //natural frequency
printf("Fundamental  frequency of quartz crystal)\n")
printf("n=%.2f   Hz",n)
