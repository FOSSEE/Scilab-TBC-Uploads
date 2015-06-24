
clc
//initialisation of variables
ph=13.89 //pressure in bar under 36 degrees temp
p1=1.447 //pressure in bar under -26 degrees temp
h1=1411.4 //kj/kg
s1=5.718 //kj/kgk
h2=1561.7 //kj/kg
h3= 150 //kj/kg
h4=185.8 //kj/kg
h5=1445.5 //kj/kg
s5=5.327 //kj/kgk
s5=5.327 //kj/kgk
h6=1607.6 //kj/kg
r=25
//CALCULATIONS
pi=(p1*ph)^0.5
m1=(3.5164*r)/(h1-h4)
mh=m1*(h2-h3)/(h5-h1)
poc=m1*(h2-h1)
pohc=mh*(h6-h5)
pr=poc+pohc
re=h1-h4
wi=(h2-h1)+(h6-h5)
cop=re/wi
//RESULTS
printf('power of lp compressor is %2fkw',poc)
printf('\npower of hp compressor is %2fkw',pohc)
printf('\ntotal power required is %2fkw',pr)
printf('\nrefrigerating effect is%2fkj/kg',re)
printf('\ncoefficient of performance is %2f',cop)
