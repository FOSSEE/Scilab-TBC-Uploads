// chapter 1 , Example1 7 , pg 23
l=3*10^-3//length(in m)
d=2500//density(in kg/m^3)
E=8*10^10//youngs modulus(in N/m^2)
p=1
n=(p*sqrt(E/d))/(2*l)//natural frequency
printf("frequency of ultrasound\n")
printf("n=%.3f KHz",n*10^-3)
