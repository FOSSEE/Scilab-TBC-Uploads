clc 
//initialisation of variables
f= 0.01
d= 3 //in
l= 22 //ft
l1= 20 //ft
w= 20 //ft
h= 5 //ft
h1= 20 //ft
t= 4 //min
g= 32.2 //ft/sec^2
//CALCULATIONS
h2= h+h1
h3= (h-(t*60*%pi*sqrt(2*g/h)/(l1*w*2*64)))^2-4
dh= h2-h3
Q= dh*l1*w
//RESULTS
printf ('Quantiy discharged= %.f cuses ',Q)
