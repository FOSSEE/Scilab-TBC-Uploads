clc
//initialisation of variables
ps=0.024853 //at 21 degress 
phi=0.34 //relative humidity
p=1.013 //pressure in bar
//CALCULATIONS
pv=ps*phi
w=0.622*(pv/(p-pv))
tdew=4.5 //at 0.00845 bar
//RESULTS
printf('specific humidity is %2fkg/kg of da',w)
disp('dew point temp is 4.5 degrees',tdew)
