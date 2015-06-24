clc
//initialisation of variables
h1=3221.6 //kj/kg
s1=7.399 //kj/kgk
sf2=0.521 //kj/kgk
sfg2=7.808 //kj/kgk
hf2=152 //kj/kg
hfg2=2415 //kj/kg
t1=653 //temp in k
t2=309.2 //temp in k
v=0.1006*10^-2
p1=10 //pressure in bar
p2=0.06 //pressure in bar
h3=152 //kj/kg
x=110
y=639.7
z=610
a=2015
//CALCULATIONS
x2=(s1-sf2)/sfg2
h2=hf2+(x2*hfg2)
wo=h1-h2
hs=h1-h3
theff=wo/hs
sr1=3600/wo
ceff=(t1-t2)/t1
wp=v*(p1-p2)
h4=h3+wp
reff=(x+y)/(z+a)
sr2=3600/(x+y)
hr=3600/reff
printf('steam rate and carnot efficiency are %2fkg/kwh and %2f',sr1,ceff)
printf('\nsteam rate and heat rate are %2fkg/kwh and %2f',sr2,hr)
