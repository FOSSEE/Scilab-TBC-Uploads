//chapter-14,Example14_2,pg 423

lam=175//gauge factor

mu=0.18//poisson's ratio

E=18.7*10^10//young's modulus

si=((lam-1-(2*mu))/E)//bridgemann coefficient

printf("bridgemann coefficient\n")

printf("si=%.14f m^2/N",si)