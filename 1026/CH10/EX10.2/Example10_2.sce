//chapter10,Example10_2,pg 271

R=0.35

n=1.38*10^7

m=1.67*10^-27

q=1.6*10^-19

B=(2*%pi*n*m)/q

E=((B^2)*(q^2)*(R^2))/(2*m)

E=E/q

printf("magnetic field induction\n")

printf("B=%.2f wb/m2",B)

printf("\nmaximum energy of proton\n")

printf("E=%.2f ev",E)