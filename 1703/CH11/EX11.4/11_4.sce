clear
clc
//initialisation of variables
g= 32.2 //ft/sec^2
u1= 90 //ft/sec
w1= 70 //ft
e= 0.8
h1= 10 //ft
h2= 16 //ft
h3= 5 //ft
k= 2/5
f1= 20 //ft/sec
f= 18 //ft/sec
a= 45 //degrees
x1= 164.4 //ft
//CALCULATIONS
Hm= u1*w1/g
Hm1= e*Hm
lh= Hm-Hm1-h1-h2-h3
vg= k*sqrt(f1^2+w1^2)
pr= ((f^2+u1^2-f1^2/(sind(a))^2)/(2*g))-h2
pr1= x1-pr
ge= pr1*g*2*100/(vg/k)^2
//RESULTS
printf ('manometer Head = %.1f ft ',Hm1)
printf ('\n outlet velocity from guides = %.1f ft/sec ',vg)
printf ('\n Pressure rise through impeller only = %.1f ft ',pr)
printf ('\n Guide balde efficiency = %.f per cent ',ge)
