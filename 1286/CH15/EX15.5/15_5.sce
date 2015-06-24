clc
//initialisation
n=400
a1=300
b1=100
a2=200
b2=200
r=2
//CALCULATIONS
p1=factorial(n)/(factorial(a1)*factorial(b1)*r^n)
p2=factorial(n)/(factorial(a2)*factorial(b2)*r^n)
w=p1/p2
//results
printf(' \n ratio of probabilities= % 1e ',w)
