clc
//initialisation of variables
p1=100//psia
p2=14.7//psia
h=1187.2//in
s=1.6026//in
g=1.7566//in
f=1.4446//in
q=970.3//lb
w=180.0//lb
H=1047.0//Btu
//CALCULATIONS
X=(g-s)/f//Btu
W=h-H//Btu
Q=h-w//Btu
E=W/Q*100//percent
//RESULTS
printf('the thermal efficiency of Rankine cycle=% f percent',E)
