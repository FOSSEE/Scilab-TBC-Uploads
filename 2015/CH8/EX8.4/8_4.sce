clc
//initialisation of variables
t1=261 //temp in k
t3=310 //temp in k
cp=1.005 //kj/kg
r=5
g = 9.81;
//CALCULATIONS
t2=(t1*(r)^((g-1)/g))
t4=(t3/(r)^((g-1)/g))
re=cp*(t1-t4)
ma=(3.5164*3600)/re
woc=cp*(t2-t1)
woe=cp*(t3-t4)
nw=woc-woe
cop1=re/nw
cop2=t1/(t3-t1)
reff=cop1/cop2
//RESULTS
printf('temparature at states 2 and 4 are %2fk and %2fk',t2,t4)
printf('\nmass of air per hour is %2fkg/h',ma)
printf('\nnet work required is %2fkj/kg',nw)
printf('\ncoefficient of perfoemance is %2f',cop1)
printf('\nrelative efficiency is %2f',reff)