
clc
//initialisation of variables
d= 0.62
g= 32.2 //ft/sec^2
B=  20 //ft
H1= 2 //ft
H2= 0.25 //ft
w= 5 //ft
//CALCULATIONS
Q1= (2*d*sqrt(2*g)*B*(H1-H2)^1.5/3)
Q2= d*B*H2*sqrt(2*g*(H1-H2))
Q= Q1+Q2
v1= Q/(w*B)
Q1i= (2/3)*d*sqrt(2*g)*B*(((H1-H2)+(v1^2/(2*g)))^1.5-(v1^2/(2*g))^1.5)
Q2i= d*B*H2*(sqrt(2*g*(H1-H2))+v1)
Qi= Q1i+Q2i
V= Qi/(w*B)
//RESULTS
printf (' mean velocity ofthe channel = %.2f ft/sec',V)
