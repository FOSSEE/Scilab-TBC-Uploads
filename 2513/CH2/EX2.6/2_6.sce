clc
//initialisation of variables
a=12//in
b=24//in
r=500//gpm
d=200//gpcd
d1=150//gpcd
p1=113//sq in
p2=425//sq in
v1=3//fps
v2=2.35//cfs
v3=9.42//cfs
h=646000//gpd
w=720000//gpd
//CALCULATIONS
D1=v2*h//gpd
D2=v3*h//gpd
W1=D1-w//gpd
W2=D2-w//gpd
R1=D1/d//people
R2=D2/d//people
S=W1/d1//people
S1=W2/d1//people
//RESULTS
printf('the absence of fire service for a maximum draft=% f gpd',D2)
printf('The residential fire flow requirements=% f gpd',W2)
