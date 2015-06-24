clc 
//initialisation of variables
L= 20000 //ft
l1= 6000 //ft
d1= 12 //in
l2= 10000 //ft
d2= 9 //in
d3= 6 //in
l3= 4000 //ft
//CALCULATIONS
D= (L/((l1/(d1/12)^5)+(l2/(d2/12)^5)+(l3/(d3/12)^5)))^(1/5)
//RESULTS
printf ('Diameter of uniform pipe= %.2f ft',D) 
