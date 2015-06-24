
clc
//initialisation of variables
A1= 25 //degrees
A2= 80 //degrees
H1= 100 //ft
H2= 13 //ft
g= 32.2 //ft/sec^2
v= 8 //ft/sec
d= 3.5 //in
de= 15.4 //in
b= 1.5 //in
w= 62.4 //lb/ft^3
//CALCULATIONS
W= H1-H2-(v^2/(2*g))
f= sqrt(W*g/(cotd(A1)*(cotd(A1)-cotd(A2))))
u= f*(cotd(A1)-cotd(A2))
V= d*u/7.7
r= atand(f/V)
N= 60*u*12/(%pi*de)
Q= %pi*de*f*b/144
HP= Q*w*W/550
Ns= N*sqrt(HP)/H1^1.25
di= sqrt(Q*4*144/(%pi*f))
//RESULTS
printf ('angle = %.f degrees',r)
printf("\n Angular speed = %.1f rpm",Ns)
printf ('\n inlet diameter to draft tube = %.2f in',di)

