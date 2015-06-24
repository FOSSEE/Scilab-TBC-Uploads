clc
//initialisation
n=5
h=2
p=1/6
//CALCULATIONS
t=1-p
a=((factorial(n))/(factorial(h)*factorial(n-h)))*(p^h)*(t^(n-h))
//results
printf(' \n probability of apperance of 4 in two dices= % 1f ',a)
