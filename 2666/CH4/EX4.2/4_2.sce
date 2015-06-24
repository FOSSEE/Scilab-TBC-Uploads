clc
//initialisation of variables
d=0.24//ft
p1=40//psia
t=240//F
p2=39//psi
t2=70//F
b=26.48//in
f=200//cu ft
h=0.491//ft
w=144//ft
q=53.35//ft
t3=700//ft
//CALCULATIONS
P=p1+h*b//psia
W=(w*P*f)/(q*t3)//lb per min
H=W*d*(t-t2)//Btu per min
//RESULTS
printf('The heat removed from the air =% f Btu per min',H)
