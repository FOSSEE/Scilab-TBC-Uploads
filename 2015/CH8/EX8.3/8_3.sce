clc
//initialisation of variables
t1=253 //temp in k
t3=313 //temp in k
cp=1.005 //kj/kg
r=4 //bar
g=1.4
//CALCULATIONS
t2=(t1*(r)^((g-1)/g))
t4=(t3/(r)^((g-1)/g))
re=cp*(t1-t4)
wi=cp*((t2-t3)-(t1-t4))
cop=re/wi
ma=(3.5164*10)/re
p=ma*wi
//RESULTS
printf('cop is %2f',cop)
printf('\nmass of refrigeration is %2fkg/s',ma)
printf('\npower required to drive the unit is %2fkw',p)
