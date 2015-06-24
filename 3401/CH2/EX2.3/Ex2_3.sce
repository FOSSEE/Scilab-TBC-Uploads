clc

a=5*10^-8// a=5A = 5*10^-8cm
h=1.054*10^-34// J*s Plank's constant 
m=9.11*10^-31// kg*m/s
e=1.6*10^-19// eV

n=1
En=(h^2*n^2*%pi^2)/(2*m*a^2)
disp(En,"the value of En in J")
En=(En/e)
disp(En,"the value of En in eV")

n=2
E2=(h^2*n^2*%pi^2)/(2*m*a^2)
disp(En,"the value of E2 in J")
E2=(E2/e)
disp(E2,"the value of E2 in eV")

n=3
E3=(h^2*n^2*%pi^2)/(2*m*a^2)
disp(E3,"the value of E3 in J")
E3=(E3/e)
disp(E3,"the value of E3 in eV")
