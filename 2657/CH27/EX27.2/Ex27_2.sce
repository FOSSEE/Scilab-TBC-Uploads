//Calculations on turbocharged CI engine
clc,clear
//Given:
Pr=1000 //Standard reference brake power in kW
eta_m=90 //Mechanical efficiency in percent
Pir=2 //Boost pressure ratio
Tra=313 //Substitute reference air temperature in K
Pimax=2.36 //Maximum boost pressure ratio
h=4000 //Altitude in m
px=61.5 //Site ambient air pressure in kPa
Tx=323 //Site ambient temperature in K
Tcx=310 //Charge air coolent temperature at site in K
//Solution:
//Refer table 27.1, 27.2 and 27.3
m=0.7,n=1.2,q=1 //Exponents
pr=100 //Standard total barometric pressure in kPa
Tcr=298 //Standard charge air coolent temperature in K
Tr=298 //Standard air temperature in K
pra=pr*Pir/Pimax //Standard reference pressure in kPa
pra=round(10*pra)/10
k=(px/pra)^m*(Tra/Tx)^n*(Tcr/Tcx)^q //The ratio of indicated power
alpha=k-0.7*(1-k)*(100/eta_m-1) //Power adjustment factor
Px1=round(alpha*Pr) //Brake power at site in kW
//If reference conditions are not changed
k=(px/pr)^m*(Tr/Tx)^n*(Tcr/Tcx)^q //The ratio of indicated power
alpha=k-0.7*(1-k)*(100/eta_m-1) //Power adjustment factor
Px2=round(alpha*Pr) //Brake power at site in kW
//Results:
printf("\n Power available at an altitude of 4000m, Px = %d kW",Px1)
printf("\n Power available at an altitude of 4000m if reference conditions are not changed, Px = %d kW\n",Px2)
