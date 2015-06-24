clc
//initialisation of variables
t1=26 //temp in degrees
t2=32 //temp in degrees
pvs=0.033597 //pressure in bar
ps=0.047534 //pressure in bar
p=1.013 //pressure in bar
a=6.6*10^-4
//CALCULATIONS
pv=pvs-(p*a*(t2-t1))
w=(0.622*pv)/(p-pv)
phi=pv/ps
//RESULTS
printf('specific humidity is %2fkg/kg of da',w)
printf('\nrelative humidity is %2f',phi)
disp('dew point temp is 23.5 degrees') //from steam tables
