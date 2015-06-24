clc
//initialisation of variables
sp=1400 //speed in revolutions per min
ma=15 //mass in kgs
r=0.287
p1=1 //pressure in bar
t1=303 //temparature in k
p2=7 //pressure in bar
c=0.05 //clearance volume/stoke volume
pi=(22/7)
n=1.2
m1=15
meff=0.85 //mechanical efficinecy
//CALCULATIONS
rp=(p2/p1)
m=ma/sp
va=(m1*r*t1)/(p1*100)
eff1=(1+c-c*(rp)^(1/n))
vs=va/eff1
d1=((4*vs)/pi)^(1/3)
pr=((n/(n-1))*m1*r*t1*((rp)^((n-1)/n)-1))/60
prs=pr/meff
d2=((prs*4)/(7*100*pi*700))^0.333
//RESULTS
printf('volumetric efficiency is %2f',eff1)
printf('\nlengh of the stroke is %2fm',d1)
printf('\nindicated power is %2fkw',pr)
printf('\npower required at the shaft of the compressor is %2fkw',prs)
printf('\ndiameter of the piston is %2fm',d2)
