
clc
//initialisation of variables
hf1=-7.53 //kj/kg
hfg1=245.8 //kj/kg
x1=0.6
sf1=-0.04187 //kj/kgk
t1=268 //temp in degrees
sf2=0.2513 //kj/kgk
hf2=81.25 //kj/kg
hfg2=121.5 //kj/kg
t2=298 //temp in k
h4=81.25 //under 20 degrees in kj/kg
h3=81.25 //under 20 degrees in kj/kg
sh=4.2 //kj/kgk
lt=335 //kj/kg
reff=0.5
sfg1= 1 //kj/kg
s2= 1 //kj/kg
//CALCULATIONS
h1=hf1+(x1*hfg1)
s1=sf1+(x1*sfg1)
x2=((s2-sf2)/hfg2)*t2
h2=hf2+(x2*hfg2)
re=h1-h4
are=re*reff
he=sh*10+lt
ma=(are*6*60)/he
//RESULTS
printf('refrigerating effect is%2fkj/kg',re)
printf('\nactual refrigerating effect is%2fkj/kg',are)
printf('\nheat to be extracted to produce 1kg of ice is %2fkj/kg of ice',he)
printf('\nmass of ice formed is %2fkg/day',ma)
