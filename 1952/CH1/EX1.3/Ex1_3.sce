// chapter 1 , Example1 3 , pg 21
l=10^-3//length(in m)
E=7.9*10^10//youngs modulus(in N/m^2)
d=2650//density(in kg/m^3)
p=1//fundamental mode
n= p*sqrt(E/d)/(2*l)  //natural frequency
printf("Fundamental  frequency of quartz crystal\n")
printf("n=%.2f Hz",n)
