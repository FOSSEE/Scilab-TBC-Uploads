clc
//initialisation of variables
p=5//ft
p1=200//ft
t1=70//F
t2=10//F
h1=23.90//ft
h2=79.36//hp
s1=0.17015//ft
p2=84.82//psia
h3=87.87//Btu
g=42.4//ft
//CALCULATIONS
W=p*p1/(h2-h1)//lb per min
W1=W*(h3-h2)//Btu per min
H=W1/g//hp
//RESULTS
printf('the horse power is =% f hp',H)
