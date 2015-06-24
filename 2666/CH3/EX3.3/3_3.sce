clc
//initialisation of variables
n=1.3//ft
h=16//ft
p=14//psia
v=0.96//cu ft
p1=36.76//psia
k=480//ft
//CALCULATIONS
P2=p*p1//psia
V=v/h//cu ft
W=k*(P2*V-p*v)//ft-lb
//RESULTS
printf('the work of compression=% f ft-lb',W)
