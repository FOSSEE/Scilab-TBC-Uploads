clc 
//initialisation of variables
d1= 1 //ft
d2= 6 //in
h1= 5 //ft
h2= 15 //ft
Pa= 15 //lbs
v1= 10 //ft/sec
w= 62.4 //lbs/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
v2= v1/(d2/12)^2
Pb= (w*((Pa+(Pa*144/w)+(v1^2/(2*g)))-h1-(v2^2/(2*g))))/144
//RESULTS
printf ('Pb= %.2f lbs/in^2 ',Pb)  
