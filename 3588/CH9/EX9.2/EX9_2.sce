//Clearing console
clc
clear

//Intializing Variables
t = 0.2
p = 7.4*(10^-4)
FBx = 0
FBy = -386.4

//As the x component of the body force is zero, the x components of the nodal force vector will be zero
f1x = 0
f2x = 0
f3x = 0

//The y components of the nodal force vector
f1y = p*t*FBy*integrate('2*x*(1-x)','x',0,1)
f2y = p*t*FBy*integrate('2*x*(x)','x',0,1)/2
f3y = p*t*FBy*integrate('2*x*(x)','x',0,1)/2

printf('\nResults\n')
printf('\nThe x components of the nodal force vector\nf1x=%flb \nf2x=%flb \nf3x=%flb',f1x,f2x,f3x)
printf('\nThe y components of the nodal force vector\nf1y=%flb \nf2y=%flb \nf3y=%flb',f1y,f2y,f3y)
printf('\nbody force is equally distributed to the element nodes')

