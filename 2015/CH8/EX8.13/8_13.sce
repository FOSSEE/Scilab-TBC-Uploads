clc
//initialisation of variables
h1=185.38 //under -5 degrees temp in kj/kg
s1=0.6991 //nder -5 degrees temp in kj/kgk
ps2=7.449 //under 30 degrees in bar
s2=0.6991 //under 30 degrees in bar
h2=203.9 //kj/kg
h3=64.59 //kj/kg
h4=64.59 //kj/kg
//CALCULATIONS
he=h2-h3
wi=h2-h1
cop1=he/wi
mf=84400/he
pr=(mf/3600)*(wi)
coe=pr*1
//RESULTS
printf('coefficient of performance is %2f',cop1)
printf('\nmass flow rate of refrigerant is %2fkg/h',mf)
printf('\npower required is %2fkw',pr)
printf('\ncost of electricity is %2frs',coe)
