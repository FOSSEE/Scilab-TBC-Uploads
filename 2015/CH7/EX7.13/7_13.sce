
clc
//initialisation of variables
clear
ps1=0.062739 //bar pressure
phi1=0.9 //relative humidity
td1=37 //temp in degrees
td3=10.7 //dew point temparature
ps4=0.02366 //bar pressure
phi4=0.55 //relative humidity
td4=20 //temp in degrees
w12=1.5 //work input in kw
v4=50 //
t4=310 //temp  in k
r= 1
w2= 1
w3= 1
hf3= 2
p=1.01325 //pressure in bar
//CALCULATIONS
pv1=phi1*ps1
w1=0.622*(pv1/(p-pv1))
h1=(1.005*td1+w1*(2500+1.86*td1))
pv4=phi4*ps4
w4=0.622*(pv4/(p-pv4))
h4=(1.005*td4+w4*(2500+1.86*td4))
h3=(1.005*td3+w4*(2500+1.86*td3))
pa4=p-pv4
ma=(pa4*v4*100)/(r*t4)
q12=(w12*60)/ma
h2=h1+q12
q23=((h3+(w2-w3)*hf3)-h2)
Q23=-1*q23*ma
q34=h4-h3
Q34=q34*ma
//RESULTS
printf('enthalpy rate 1 is %2fkj/kg of da',h1)
printf('\nenthalpy rate 4 is %2fkj/kg of da',h4)
printf('\nenthalpy rate 3 is %2fkj/kg of da',h3)
printf('\nmass of dry air is %2fkg/min',ma)
printf('\nenthalpy rate 2 is %2fkj/kg of da',h2)
printf('\ncapacity od cooling coil q23 is %2fkj/min',Q23)
printf('\ncapacity od cooling coil q34 is %2fkj/min',Q34)
