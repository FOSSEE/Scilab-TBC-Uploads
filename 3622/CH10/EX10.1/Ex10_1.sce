//Initialisation of variables
clc
l=3e-3//vibrating length
E=8e10//young modulus
d=2500//kg per m3
N=(1/(2*l))*sqrt(E/d)
printf('frequency is %e Hz \n',N)
