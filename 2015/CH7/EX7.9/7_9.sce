clc
//initialisation of variables
ps1=0.056216 //bar pressure
ps3=0.023366 //bar pressure
phi1=0.6 //relative humidity
td3=20 //temp in degress
td1=35 //temp in degrees
td2=12 //temp in degrees
r=0.287
p=1.01325 //pressure in bar
x1=90.12 //kj/kg
x2=34.08 //kj/kg
x3=42.25 //kj/kg
hf=0.4 //kj/kg
w1=0.02142
w2=0.00873
//CALCULATIONS
pv1=phi1*ps1
w1=0.622*(pv1/(p-pv1))
h1=(1.005*td1+w1*(2500+1.86*td1))
pv3=phi1*ps3
w3=0.622*(pv3/(p-pv3))
h3=(1.005*td3+w3*(2500+1.86*td3))
h2=(1.005*td2+0.0073*(2500+1.86*td2))
ma=((p-pv1)*100*2.5)/(r*(td1+273))
q1=ma*(x2-x1)+(w1-w2)*hf
q2=(ma*(x3-x2))
//RESULTS
printf('mass of dry air is %2fkg/s',ma)
printf('\ncooler load on the dehumidyfier is %2fkw',q1)
printf('\nheating load of the heater is %2fkw',q2)
