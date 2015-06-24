clc 
//initialisation of variables
l1= 3000 //ft
d1= 18 //in
l2= 1500 //ft
d2= 15 //ft
l3= 1000 //ft
d3= 12 //in
//CALCULATIONS
d= ((l1+l2+l3)/((l1/d1^5)+(l2/d2^5)+(l3/d3^5)))^(1/5)
//RESULTS
printf ('Diameter = %.2f in ',d)
