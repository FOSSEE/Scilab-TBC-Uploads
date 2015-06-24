
clc
//initialisation of variables
t1=310 //temp in k
p1=1 //pressure in bar
p2=4 //pressure in bar
cp=1.005 //kj/kg
v1=28 //m*m*m volume
r=0.287
ce=0.7 //copression efficiency
g= 32.2 //ft/sec^2
//CALCULATIONS
t2s=t1*(p2/p1)^((g-1)/g)
wi=cp*(t2s-t1)
m=(p1*v1*100)/(r*t1)
apr=(m*wi)/60
iei=wi/ce
//RESULTS
printf('isentropic work is %2f',apr)
printf('\nadiabatic power required is %2f',m)
printf('\nindicated enthalpy increase is %2f',iei)
