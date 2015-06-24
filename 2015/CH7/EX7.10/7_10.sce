clc
//initialisation of variables
x1=90.12 //kj/kg
x3=42.25 //kj/kg
ps3=0.023366 //bar pressure
td3=35 //temp in degrees
phi1=0.6 //relative humidity
p=1.01325 //pressure in bar
//CALCULATIONS
pv3=phi1*ps3
w3=0.622*(pv3/(p-pv3))
h3=(1.005*td3+w3*(2500+1.86*td3))
qs=h3-x3
ql=x1-h3
shf=qs/(qs+ql)
//RESULTS
printf('sensible heat removed is %2fkj/kg of da',qs)
printf('\nlatent heat removed is %2fkj/kg of da',ql)
printf('\nsensible heat factor is %2f',shf)
