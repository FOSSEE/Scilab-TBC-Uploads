clc
//initialisation of variables
p2=1.5 //pressure in bar
p1=1 //pressure in bar
v=0.05 //volume in m*m*m
x=0.35 //increse in pressure
g=1.4
r=1.4
n=120 //number of cycles
//CALCULATIONS
wa=v*(p2-p1)*100
wi1=3.5*100*p1*v*(((p2/p1)^((r-1)/r))-1)
ceff=wi1/wa
vo=v/4
pr=wa*n/60
prs=x*(p2-p1)
p3=p1+prs
wi2=3.5*100*p1*v*(((p3/p1)^((r-1)/r))-1)
vi=v*(p1/p3)^(1/g)
w2=vi*(p2-p3)*100
tw=w2+wi2
comeff=wi1/tw
po=tw*2
//RESULTS
printf('compressor efficiency is %2f',ceff)
printf('\nwork required for internal compression is %2fknm/rev',wi2)
printf('\npower required is %2fkw',pr)
printf('\ncompressor efficiency 2 is %2f',comeff)
printf('\npower required 2 is %2fkw',po)
