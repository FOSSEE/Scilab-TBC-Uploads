clc
//initialisation
n=1.7*10^-5//newton/m2/unit vel gradient
p=10^5//newton//m2
d=1.2//kg/m3
//CALCULATIONS
l=n*sqrt(3/(d*p))
f=p/n
//results
printf('.mean free path= % 1e m',l)
printf(' \ncollision frequency= % 1f per second',f)
