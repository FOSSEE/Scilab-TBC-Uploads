clc 
//initialisation of variables
l= 30 //ft
w= 10 //ft
d= 4 //in
h= 10 //ft
dh= 2 //ft
Cd= 0.97
g= 32.2 //ft/sec^2
//CALCULATIONS
A1= w*3*l/4
A2= l*w/4
A= %pi*(d/12)^2/4
T= 2*A1*(sqrt(h)-sqrt(dh))*10/(Cd*A*sqrt(2*g)*(l+w))
//RESULTS
printf ('Time it take to reduce the height = %.f sec',T)
