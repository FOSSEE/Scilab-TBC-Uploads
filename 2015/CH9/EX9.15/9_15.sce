clc
//initialisation of variables
t1=295 //temp in k
p1=1.02 //pressure in bar
p2=7.14 //pressure in bar
cp=1.005 //kj/kg
g=1.4
wr=250 //kj/kg
//CALCULATIONS
t2s=t1*(p2/p1)^((g-1)/g)
wi=cp*(t2s-t1)
ieff=wi/wr
t2=(wr/cp)+t1
//RESULTS
printf('isentropic work is %2fkj/kg',wi)
printf('\nisentropic efficiency is %2f',ieff)
printf('\ntemparature 2 is %2fk',t2)
disp('index of compression is 1.46')
