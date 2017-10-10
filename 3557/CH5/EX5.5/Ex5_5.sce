//Example 5.5//
x=1*10^-3;//m// Using the diffusivity from sample problem 5.3
D=2.98*10^-11;//m^2/s //arrhenius equations
a=0.95;//from the figure 5.11
d=(x^2)/((a^2)*(D))// calculating the value of d
mprintf("d = %e h",d)
b=1;//h //hour
c=3.6*10^3;//s //second
t=d*(b/c)
mprintf("\nt = %f h",t)
