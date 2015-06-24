
clc
//initialisation of variables
f= 0.009
dc= 3.5 //in
ds= 6 //in
r= 0.25
sl= 8 //ft
d= 2.5 //in
l= 14 //ft
el= 8 //ft
ed= 22.5 //in
ph= 4 //ft
g= 32.2 //ft/sec^2
f= 0.009
//CALCULATIONS
BC= el+l
v= sqrt(BC*g/(l*(d/2)*(r)*(dc/d)^2))*9.55
x=poly(0,"x")
vec=roots(2*x^2+(1/r)*x-1)
H= vec(2)
H1= acosd(0.225)
MV= sqrt(BC*g/(l*(d/2)*(r)*(dc/d)^2))*r*(sind(H1)+(sind(2*H1)/8))
mvp= MV*dc^2/d^2
hf= 4*f*(sl+l)*mvp^2/(2*g*(d/12))
//RESULTS
printf ('pump speed = %.1f r.p.m',v)
printf ('\n Friction head = %.3f ft',hf)
