clc
//initialisation of variables
ps1=0.010720 //bar pressure
phi1=0.3 //relative humidity
td1=8 //temp in degrees
td2=32 //temp in degrees
td3=30 //temp in degrees
ps3=0.042415 //bar pressure
phi3=0.5 //relative humidity
hf=762.6 //kj/kg
hfg=2013.6 //kj/kg
p=1.01325 //pressure in bar
//CALCULATIONS
pv1=phi1*ps1
w1=0.622*(pv1/(p-pv1))
h1=(1.005*td1+w1*(2500+1.86*td1))
h2=(1.005*td2+w1*(2500+1.86*td2))
ha=h2-h1
pv3=phi3*ps3
w3=0.622*(pv3/(p-pv3))
h3=(1.005*td3+w3*(2500+1.86*td3))
wa=w3-w1
hw=(h3-h2)/(w3-w1)
x=(hw-hf)/hfg
//RESULTS
printf('heat added is %2fkj/kg of da',ha)
printf('\nwater added is %2fkg/kg of da',wa)
disp('temp os steam supplied is 179.88 degrees') //at 10 bar pressure
printf('\nsteam required is %2fkj/kg of steam',hw)
printf('\nquality of steam at 10 bar is %2f',x)
