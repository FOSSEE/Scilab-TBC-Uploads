clc
//initialisation of variables
ps=0.042415 //under 30 degrees temp in bar
vg=32.929 //m*m*m/kg
phi=0.3 //relative humidity
p=1.01325 //bar
pv=0.012725^10^2 //pressure 
rv=0.4615
t=313 //temp in k
pa=1.005*10^2
ra=0.287
//CALCULATIONS
pv=phi*ps
w1=0.622*(pv/(p-pv))
rhos=1/vg
rhov=phi*rhos
rho=pv/(rv*t)
pa=p-pv
rhoa=pa*100/(ra*t)
w2=rhov/rhoa
ds=phi*((p-ps)/(p-pv))
//RESULTS
printf('partial pressure of water vapour is %2fbar',pv)
printf('\ndensity of dry air is %2fkg/m*m*m',rhoa)
disp('dew point temp is 10.5 degrees')
printf('\nspecific humidity is %2fkg/kg of da',w2) //textbook answer slightly varies
printf('\ndegree of saturation is %2f',ds)
