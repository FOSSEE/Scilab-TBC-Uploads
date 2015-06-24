// chapter 1 , Example1 16 , pg 26
l=40*10^-3//length(in m)
E=11.5*10^10//youngs modulus(in N/m^2)
d=7250//density(in kg/m^3)
p=1//fundamental mode
n= p*sqrt(E/d)/(2*l)  //natural frequency
printf("Fundamental  frequency of quartz crystal\n")
printf("n=%.2f  KHz",n*10^-3)
