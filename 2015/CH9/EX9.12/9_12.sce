clc
//initialisation of variables
t1=303 //temparature in k
p2=4.08 //pressure in bar
p1=1 //pressure in bar
t5=303 //temparature in k
x=0.3247 //x=v2/v1 where the relation is v2=v1*(1/rp)^1/n
y=0.0385 //y=v3/v1
vo=0.2862 //vo=volume of air delivered/v1
vf=0.8299 //vf=vome of free air /v1
n=1.25
p3=17.5 //pressure in bar
r=0.287
tatm=2911 //temp in k
patm=1.02 //pressure in bar
w=291 
//CALCULATIONS
t2=(t1*(p2/p1)^((n-1)/n))
veff=vf/(1-y)
a=(r*(t2-t1)*5)
t3=(t1*(p3/p2)^((n-1)/n))
hp=(5*r*(t3-t1))
iso=(r*tatm*log(p3/patm))/10 //its ln
ieff=iso/w
//RESULTS
printf('volumetric efficiency is %2f',veff)
printf('\nwork required for lp cyclinder is %2f',a)
printf('\nwork required for hp cyclinder is %2f',hp)
printf('\nwork required for isothermal is %2f',iso)
printf('\nisothermal efficiency is %2f',ieff)
