clc
//initialisation
n=10
a=0.6
h=0
//CALCULATIONS
b=1-a
p=factorial(n)*a^10/(factorial(n-h)*factorial(h))
//results
printf(' \n probability of heads occurence= % 1f ',a*10)
printf(' \n probability of occuring head only in 10 throws= % 1f ',p)
