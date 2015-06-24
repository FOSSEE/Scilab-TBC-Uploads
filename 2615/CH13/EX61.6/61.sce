clc
//initialisation of variables
d=80//mm
p=400//kg
n=477//kg
h=1000//mm
t=60//sec
//CALCULATIONS
V=(%pi*d*n)/(h*t)//m/sec
N=p*V/75//hp
//RESULTS
printf('the peripheral velocity of the workpicece=% f m/sec',N)
