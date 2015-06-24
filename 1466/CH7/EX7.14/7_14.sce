
clc
//initialisation of variables
d= 6 ///in
v= 4 //ft/sec
K= 300000 //Lb/in^2
E= 30*10^6*144 //Lb/in^2
w= 62.4 //Lb sec/ft^3
t= 1/48 //ft
g= 32.2 //ft/sec^2
fc1= 300 //lb/in62
//CALCULATIONS
P= v*sqrt(w/(g*((1/(K*144))+(2*(d/24)*48/(E*144)))))
fc= P*(6/24)/(t*144)-fc1
//RESULTS
printf (' Theotrical stress= %.f Lb/in^2',fc)
