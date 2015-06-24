clc
//initialisation of variables
p=400//psia
t=450//F
p1=0.545//in
k=1.135//in
p2=0.578//ft
v=1.1744//in
h=1208.8//in
s=1.4892//in
p3=218//in
v1=2.002//in
h1=1158.1//in
p4=0.0495//in
v2=223.8//ft
w=64.4//ft
w1=1.3//ft
Vel=1574//ft per sec
//CALCULATIONS
P=p1*p//ft
P1=v2*sqrt(h-h1)//lb per sec
W=(1/144)*(P1/v1)//lb per sec
V=v*(p/P)^(1/(1.3))//cu ft per lb
W1=(1/144)*(Vel/V)//lb per sec
//RESULTS
printf('the equalibrium flow=% f lb per sec',W)
printf('supersaturation flow=% f lb per sec',W1)
