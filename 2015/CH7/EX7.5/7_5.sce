clc
//initialisation of variables
p=1.01325 //pressure in bar
pv=0.020 //pressure in bar at 21 degrees temp
ws=0.0154 //kg/kg of da
w=0.0123 //kg/kg of da
vs=0.86 //under 21 degrees temp m*m*m/kg
w1=0.0074
//CALCULATIONS
pa=p-pv
sr=w/ws
rho=1/vs
avc=0.0163-w1
//RESULTS
printf('partial pressure of vapour and dry air are %2fbar and %2fbar',pv,pa)
disp('dew point temp is 17.4 degrees')
disp('specific humidity is 0.0123 kg/kg of da')
printf('\nsaturation ratio is %2f',sr)
printf('\ndensity of misture is %2fkg/m*m*m',rho)
printf('\namount of water vapour condensed is %2fkg/kg of da',avc)
