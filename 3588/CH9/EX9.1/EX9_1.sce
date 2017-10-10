//Clearing console
clc
clear

//Intializing Variables
t = 0.2
p1x = 0
p1y = -100
p2x = 150
p2y = 0

//nodal force vector arising from the distributed loads in element 1
k11 = integrate('1-x','x',0,1)
k12 = integrate('x','x',0,1)

f1 = t*[k11 0;k12 0;0 0;0 k11;0 k12;0 0]*[p1x;p1y]

//nodal force vector arising from the distributed loads in element 2
k21 = integrate('(2-y)*y/2','y',0,2)
k22 = integrate('y*y/2','y',0,2)
k23 = integrate('(2-y)/2','y',0,2)
k24 = integrate('y/2','y',0,2)

f2 = t*[0 0;k21 0;k22 0;0 k23;0 k24;0 0]*[p2x;p2y]

//nodal force vector arising from the distributed loads
f = f1+f2

printf('\nResults\n')
printf('\nNodal force vector arising from the distributed loads for the element f(p) in (lb)')
printf('\nf1x =%flb',f(1))
printf('\nf2x =%flb',f(2))
printf('\nf3x =%flb',f(3))
printf('\nf1y =%flb',f(4))
printf('\nf2y =%flb',f(5))
printf('\nf3y =%flb',f(6))


