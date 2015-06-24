clc
//initialisation of variables
ps=0.035636 //pressure in bar
pvw=0.018168 //pressure in bar
p=1.01325 //pressure in bar
a=6.6*10^-4
w=0.00667
td=27 //temparature in degrees
tw=16 //temparature in degrees
//CALCULATIONS
pv=pvw-(p*a*(td-tw))
w=0.622*(pv/(p-pv))
phi=pv/ps
h=(1.005*td+w*(2500+1.86*td))
//RESULTS
printf('humidity ratio is %2fkg/kg of da',w)
printf('\nrelative humidity is %2f',phi)
disp('dew point temparature is 8 degrees')
printf('\nenthalphy of moist air is %2fkg/kg of da',h)
