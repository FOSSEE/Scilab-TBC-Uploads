clc
//initialisation of variables
ps1=0.056216 //bar pressure
phi1=0.2 //relative humidity
td1=35 //temp in degrees
p=1.01325 //pressure in bar
td2=25 //temp in degrees
ps2=0.03166 //bar
//CALCULATIONS
pv1=phi1*ps1
w1=0.622*(pv1/(p-pv1))
ha=(1.005*td1+w1*(2500+1.86*td1))
w2=(ha-(1.005*td2))/(2500+1.86*td2)
pv2=(w2*p)/(w2+0.622)
phi2=pv2/ps2
//RESULTS
printf('relative humidity rate is %2fkg/kg of da',ha)
printf('\nrelative humidity is %2f',phi2)
printf('\namount of water to be added is %2fkg/kg of da',w2)
