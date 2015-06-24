clc
//initialisation of variables
td3=17 //dew point temparature
ps3=0.019362 //bar pressure
phi3=0.6 //relative humidity
p=0.98 //bar pressure
t3=290 //temp in k
ps4=0.042415 //bar pressure
phi4=1 //relative humidity
td4=30 //temp in degrees
mw2=80
v=110 //volume
ma=127.98
w4=0.02814
w3=0.007464
r=0.287
hf1=209.3
//CALCULATIONS
pv3=phi3*ps3
w3=0.622*(pv3/(p-pv3))
h3=(1.005*td3+w3*(2500+1.86*td3))
pa3=p-pv3
m=(pa3*v*100)/(r*t3)
h2=h3+(240/ma)
pv4=phi4*ps4
w4=0.622*(pv4/(p-pv4))
h4=(1.005*td4+w4*(2500+1.86*td4))
mw1=mw2+ma*(w4-w3)
hf2=((mw1*hf1)+(ma*h2)-(ma*h4))/mw2
//RESULTS
printf('mass of dry air is %2fkg/min',m)
printf('\nenthalpy rate 3 is %2fkj/kg of da',h3)
printf('\nenthalpy rate 2 is %2fkj/kg of da',h2)
printf('\nenthalpy rate 4 is %2fkj/kg of da',h4)
printf('\nenthalpy rate  is %2fkj/kg of da',hf2)
disp('temparature of water leaving the tower is 27.1 degrees')
