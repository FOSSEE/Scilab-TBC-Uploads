clc 
//initialisation of variables
h= 9 //ft
h1= 9.5 //ft
i= 1/6400
h2= 40 //ft
h3= 59 //ft
h4= 5 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
m= h2*h1/h3
v= 140*sqrt(m*i)*(h4/h1)
a= v^2/(140^2*m)
s= (i-a)/(1-0.11)
x= 1/s
//RESULTS
printf ('distance upstream from the dam= %.f ft',x)
