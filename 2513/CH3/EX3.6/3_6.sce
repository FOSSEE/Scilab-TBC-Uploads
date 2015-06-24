clc
//initialisation of variables
p=10000//people
p1=4//ft
w=10//in
s=80//gpcd
h=43560//ft
p2=20//ft
//CALCULATIONS
R=[(w/12)*7.5*h]/365//gpad
A=p*s/R//acres
A1=1.7//sq miles
P=p/500//acres
D=p2*h*4*7.48/(p*s)//days
//RESULTS
printf('the detention period in ponds =% f days',D)
