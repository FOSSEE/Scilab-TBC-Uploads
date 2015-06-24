clc 
// Given that
h=15 // Height of spur in cm
l= 50 // Length of cast in cm
w= 25 // weidth of cast in cm
h1= 15 // Height of cast in cm
g= 981 // Acceleration due to gravity in cm/sec^2
Ag= 5 // Cross sectional area of the grate in cm^2
// Sample Problem 1 on page no. 46
printf("\n # PROBLEM 2.1 # \n")
v3= sqrt(2* g * h)
V = l*w*h1
tf1= V/(Ag*v3)
Am = l*w
tf2 = (Am/Ag)*(1/sqrt(2*g))*2*(sqrt(h) - sqrt(h-h1))
printf("\n Filling time for first design = %f sec, \n Filling time for second design = %f sec", tf1, tf2)
