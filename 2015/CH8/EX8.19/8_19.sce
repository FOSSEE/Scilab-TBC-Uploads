clc
//initialisation of variables
t1=300 //temp in k
sf=2.9409 //kj/kgk
s1=6.44125 //kj/kgk
hf=-133.347 //kj/kg
h1=272.763 //kj/kg
w=-4690.5
//CALCULATIONS
mw=(t1*(sf-s1)-(hf-h1))
fom=mw/w
//RESULTS
printf('minimum work is %2fkj/kg of o2 liquefied',mw)
printf('\nfigure of merit is %2f',fom)
//no 8.17 and 8.19 in tb print mistake
