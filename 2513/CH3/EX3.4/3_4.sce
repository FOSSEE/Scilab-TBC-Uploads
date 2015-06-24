clc
//initialisation of variables
t=0.8//mgd
d=8000//people
a=2//hr
v=800000//ft
h=10//ft
a1=4//in
d1=1//sq ft per capita
a3=3//mgad
//CALCULATIONS
V=v*(a/24)/a//gal
S=V/h//sq ft
S1=(v/h)/S//gpd per sq ft
V1=a*d/h//cu ft
D=d/S//ft
E=d1*d/a1//sq ft
A=t/a3//acre
//RESULTS
printf('the capacity of the components of a small trickling-filter =% f acre',A)
