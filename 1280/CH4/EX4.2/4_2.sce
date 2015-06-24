clc
//initialisation of variables
D= 2 //in
S= 10 //in
s= 10000 //strokes
V= 231 //in^3
//CALCULATIONS
di= V/(S*s*D*%pi)
//RESULTS
printf ('thickness = %.7f in',di)
