clc
//initialisation of variables
w=2000//sq miles
r=0.1//cfs
d=80000//ft
p=100//gpd
p1=80//ft
p2=340//percent
h=646000//ft
//CALCULATIONS
L=r*w//cfs
R=6*p1/1.4//cfs
P=p1*(p2-L)/p2//percent
D=(d*p)//gpd
D1=(L*h)//gpd
//RESULTS
printf('the percent of removal of pollutional load needed=% f percent',P)
