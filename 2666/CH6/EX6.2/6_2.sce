clc
//initialisation of variables
p=200//psia
w=0.92//lb
q=92//percent
h1=355.36//in
h2=843.0//in
h3=1198.4//in
p1=0.08//lb
//CALCULATIONS
H=h1+w*(h1)//psia
hx=h3-p1*(h2)//psia
//RESULTS
printf('the enthalpy of pound=% f psia',hx)
