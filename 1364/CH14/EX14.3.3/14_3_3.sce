clc
//initialisation of variables
g= 32.2 //ft/sec^2
Z= 36 //ft
r= 4 //in
r1= 12 //in
//CALCULATIONS
w= (sqrt(2*g*Z/((r1/12)^2-(r/12)^2)))*(60/(2*%pi))
//RESULTS
printf (' minimum speed= %.f rev/min',w)
