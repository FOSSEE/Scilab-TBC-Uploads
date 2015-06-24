clc
//initialisation of variables
d= 4 //ft
w= 240 //rev/min
v1= 120 //ft/sec
n= 25
a= 30 //degrees
g= 32.2 //ft/sec^2
//CALCULATIONS
v= d*w*2*%pi/(2*60)
dv= v1-v
vr= dv*(1-(n/100))
F= (dv+vr/32.2)
kh= v1^2/(2*g)
n= 164*100/kh
//RESULTS
printf (' efficiency = %.1f percent',n)
