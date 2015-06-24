clc
//initialisation of variables
td3=15 //dew point temparature
ps3=0.017039 //bar pressure
phi3=0.55 //relative humidity
p=1 //bar pressure
ps4=0.029821 //bar pressure
phi4=1 //relative humidity
td4=24 //temp in degrees
mw1=1000 //kg/min
hf1=109 //kj/kg
hf2=50.4 //kj/kg
w4=0.01912
w3=0.00588
//CALCULATIONS
pv3=phi3*ps3
w1=0.622*(pv3/(p-pv3))
h3=(1.005*td3+w3*(2500+1.86*td3))
pv4=phi4*ps4
w4=0.622*(pv4/(p-pv4))
h4=(1.005*td4+w4*(2500+1.86*td4))
ma=mw1*(hf1-hf2)/(h4-h3-(w4-w3)*hf2)
x=ma*(w4-w3) //mw1-mw2
mf=ma+x
pl=(x/mw1)*100
//RESULTS
printf('mass of dry air is %2f',ma)
printf('\nmass cooling water loss by evoporation is %2f',x)
printf('\nmass flow of moist air is %2f',mf)
printf('\npercentage loss by evoporation is %2f',pl)
