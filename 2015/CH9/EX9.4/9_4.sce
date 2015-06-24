clc
//initialisation of variables
p2=4.08 //pressure in bar
p1=1 //pressure in bar
n=1.22
r=0.287
p=1.01325 //pressure in bar
v=145 //volume
t=288 //temparature in k
p3=17.5 //pressure in bar
t1=307 //temp in k
t2=313 //temp in k
//CALCULATIONS
wlp=5.54*r*t1*(((p2/p1)^((n-1)/n))-1)
whp=5.54*r*t2*(((p2/p1)^((n-1)/n))-1)
w=wlp+whp
m=(p*v)/(r*t)
pr=(w*m)/60
p2=(p1*p3)^0.5
x=(p2)^0.5 //x=d1/d2
//RESULTS
printf('total work required is %2fknm/kg',w)
printf('\nmass of free air is %2fkg/min',m)
printf('\npower required to drive the compressor is %2fkw',pr)
printf('\nratio of cylinder diameters is %2f',x)
