clc
//initialisation of variables
H=1360//ft
t=60//f
a=(10^3)*5.5*(10^-3)//f
q=(1.36*10^3)*5.5*(10^-3)//f
s=(4-1.36)*(10^3)*(3.2*10^-3)//f
//CALCULATIONS
T=t-q-s//F
T1=T+3*a//F
//RESULTS
printf('the temperature at the mountain top=% f F',T)
printf('the temperature on the plain beyond the mountain=% f F',T1)
