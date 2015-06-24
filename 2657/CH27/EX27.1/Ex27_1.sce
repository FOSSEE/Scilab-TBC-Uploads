//Calculations on non supercharged CI engine
clc,clear
//Given:
Pr=500 //Standard reference brake power in kW
eta_m=85 //Mechanical efficiency in percent
br=220 //Standard specific fuel consumption in g/kWh
px=87 //Site ambient air pressure in kPa
Tx=45+273 //Site ambient temperature in K
phix=80/100 //Relative humidity at site
//Solution:
//Refer table 27.1, 27.2 and 27.3
a=1 //Factor
m=1,n=0.75,q=0 //Exponents
psx=9.6 //Saturation vapour pressure at site in kPa
psr=3.2 //Standard saturation vapour pressure in kPa
pr=100 //Standard total barometric pressure in kPa
Tr=298 //Standard air temperature in K
phir=0.3 //Standard relative humidity
k=((px-a*phix*psx)/(pr-a*phir*psr))^m*(Tr/Tx)^n //The ratio of indicated power
alpha=k-0.7*(1-k)*(100/eta_m-1) //Power adjustment factor
Beta=k/alpha //Fuel consumption adjustment factor
Px=alpha*Pr //Brake power at site in kW
bx=Beta*br //Specific fuel consumption at site in g/kWh
//Results:
printf("\n The site continuous net brake power, Px = %.1f kW",Px)
printf("\n The site continuous specific fuel consumption, bx = %.1f g/kWh\n",bx)
