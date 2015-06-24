clc
//initialisation of variables
ps1=0.006566 //bar pressure
phi1=0.6 //relative humidity
td2=21 //temp in degrees
td1=1 //temp in degrees
ps2=0.02486 //pressure in bar
td3=26 //temp in degrees
p=1.013 //pressure in bar
//CALCULATIONS
pv1=(phi1*ps1)
w=0.622*(pv1/(p-pv1))
q=(td2-td1)*(1.005+(1.86*w))
phi2=pv1/ps2
cbf=(td3-td2)/(td3-td1)
cf=1-cbf
//RESULTS
printf('heat supplied to air is %2fkg/kg of da',q)
printf('\nfinal relative humidity is %2fkg/kg of da',phi2)
printf('\ncoil bypass factor is %2f',cbf)
printf('\ncontact factor is %2f',cf)
