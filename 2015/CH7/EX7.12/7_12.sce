clc
//initialisation of variables
ps1=0.023366 //bar pressure
phi1=0.4//relative humidity
td1=20 //temp in degrees
m1=40 //kg/s
ps2=0.01227 //bar pressure
phi2=0.8//relative humidity
td2=10 //temp in degrees
m2=20 //kg/s
p=1.01325 //pressure in bar
//CALCULATIONS
pv1=phi1*ps1
w1=0.622*(pv1/(p-pv1))
h1=(1.005*td1+w1*(2500+1.86*td1))
ma1=m1/(1+w1)
pv2=phi2*ps2
w2=0.622*(pv2/(p-pv2))
h2=(1.005*td2+w2*(2500+1.86*td2))
ma2=m2/(1+w2)
w3=((ma1*w1)+(ma2*w2))/(ma1+ma2)
h3=((ma1*h1)+(ma2*h2))/(ma1+ma2)
td3=((ma1*td1)+(ma2*td2))/(ma1+ma2)
//RESULTS
printf('specific humidity is %2fkj/kg of da',w3)
printf('\ntemparature of air leaving chamber is %2fdegrees',td3)
