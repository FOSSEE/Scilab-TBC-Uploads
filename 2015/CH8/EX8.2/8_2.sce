clc
//initialisation of variables
t1=278 //temparature in k
t2=300 //temparature in k
hf2=21 //kj/kg
hfg2=2489.7 //kj/kg
h3=113.1 //under 300 k in kj/kg
x2=0.8
p=3.154 //power
//CALCULATIONS
cop=t1/(t2-t1)
h2=hf2+(x2*hfg2)
re=h2-h3
pr=p/cop
//RESULTS
printf('cop is %2f',cop)
printf('\npower required is%2fkw/ton of refrigeration',pr)
printf('\nrefrigeration effect is %2fkj/kg',re)
