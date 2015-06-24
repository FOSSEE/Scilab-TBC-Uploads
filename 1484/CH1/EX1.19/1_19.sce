clc 
//initialisation of variables
k1= 1 //ft
k2= 35.98 //ft
k3= 66.83 //ft
//CALCULATIONS
x=poly(0,"x")
vec=roots(k1*x^3-k2*x+k3)
X= vec (2)
//RESULTS
printf ('depth of the water= %.2f ft',X)
