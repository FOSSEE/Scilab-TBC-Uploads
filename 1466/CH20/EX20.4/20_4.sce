


clc
//initialisation of variables
clear
h=50//ft
d1=3//ft
p=3//percent
f=0.005
l1=36//in
d=8//in
i=2//in
g=32.2//ft/sec^2
//CALCULATIONS
wp=h*100/(100-p)
ip=51.5*4/(%pi*d*d)
ip1=ip*100/(100-p)
p1=ip1*d1*d1*100*2240/(l1*l1*(100-p))
phead=p1*144/62.4
headl=h-phead
v=sqrt(headl*2*g*i/(4*f*400*12))
V=v*((i/d)^2)*((d1/l1)^2)*60*12
//RESULTS
printf ('v = %.1f ft/sec',v)
printf ('\n V = %.1f in/min',V)
