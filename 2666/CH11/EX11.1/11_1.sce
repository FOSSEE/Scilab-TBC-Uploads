clc
//initialisation of variables
h=500//cu ft
p=14//psia
t=70//F
p1=90//psia
q=1.4//ft
h1=144//ft
w=33000//ft
n=1.35//ft
g=1.46//ft
//CALCULATIONS
I=((q/0.4)*(h1*p*h))/(w)*[1-(p1/p)^(0.4)/(q)]*q//hp
P=((-h1*p*h)*log(p1/p))/w//hp
V=((n/0.35)*(h1*p*h)/w)*[1-(p1/p)^(0.35)/(n)]*g//hp
//RESULTS
printf('the isothermal horsepower=% f hp',I)
printf('the isothermal horsepower=% f hp',P)
printf('the polytropic horsepower require is=% f hp',V)
