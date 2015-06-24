clc
//initialisation of variables
d1=0.67//ft
h1=2.00//ft
h2=4.04//ft
hv1=0.062//ft
hv2=0.254//ft
d=0.19//ft
h=0.2//ft
h1=0.04//ft
q=0.644//ft
q1=0.65//ft
v=0.92//ft
d2=6.5//ft
v1=3.69//ft
d3=0.542//ft
hv3=0.21//ft
delv=0.15//ft
d4=0.02//ft
//CALCULATIONS
H=d1+hv1//ft
H1=d1+hv2//ft
he=h*d//ft
hi=d+h1//ft
H2=d3+hv3//ft
he1=h*delv//ft
S=d4+h1//ft
//RESULTS
printf('the required slope=% f ft',hi)
printf('the lower sewer and the invert drop in the transition=% f ft',S)
