clc 
//initialisation of variables
W= 100 //ft
h= 10 //ft
v= 4 //ft/sec
h1= 3 //ft
g= 32.2 //ft/sec^2
H= 5.4 //ft
Cd1= 0.58
Cd2= 0.8
//CALCULATIONS
v0= (W*h*v)/(W*(h+h1))
h0 =v0^2/(2*g)
H2= (W*h*v-(2*Cd1*W*sqrt(2*g)*((h1+h0)^1.5-h0^1.5)/3))/(Cd2*W*sqrt(2*g*(h1+h0)))
dh= h-H2
//RESULTS
printf ('height of anicut which is drowned = %.f ft ',dh)
