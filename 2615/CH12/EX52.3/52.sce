clc
//initialisation of variables
d=60//mm
a=1000//mm
v=425//m/min
g=1.6//kg
g1=0.0015//mm
h=0.00112//mm
//CALCULATIONS
n=(a*v)/(%pi*d)//rpm
N=h*g*g1*(n)^2//kg
C=N/g//times
//RESULTS
printf('the time of weight of the workpice the will harm the centre=% f times',C)
