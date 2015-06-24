clc
//initialisation of variables
v= 0.02 //lb/ft sec
L= 5 //in
D= 2.5 //in
M= 26 //lbf in
w= 1200 //rev/min
g= 32.2 //ft/sec^2
//CALCULATIONS
C= %pi*v*w*2*%pi*D^3*L/(2*M*g*60*144)
//RESULTS
printf (' coefficient= %.4f in ',C)
