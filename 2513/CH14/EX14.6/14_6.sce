clc
//initialisation of variables
q=60//cfs
D=4//ft
w=0.177//ft
s=0.59//ft
h=4.0//ft
d1=1.0//ft
v=0.90//ft
d1=0.42//ft
h1=6.0//ft
h2=1.5//ft
dl=1.3//ft
p=0.41//ft
u=0.8//ft
u1=3.2//ft
y=0.45//ft
//CALCULATIONS
H=s*D//ft
d2=d1*D//ft
V=v*D//ft
P=p*D//ft
D1=y*D//ft
//RESULTS
printf('the critical depth=% f ft',H)
printf('the alternate stages for an energy =% f ft',V)
printf('the alternate stages for an energy head=% f ft',P)
printf('the lower alternate stage with upper alternate stage=% f ft',D1)
