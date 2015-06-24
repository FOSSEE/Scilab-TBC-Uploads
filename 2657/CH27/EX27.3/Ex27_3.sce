//Calculations on turbocharged CI engine
clc,clear
//Given:
Px=640 //Brake power at site in kW
px=70 //Site ambient air pressure in kPa
Tx=330 //Site ambient temperature in K
Tcx=300 //Charge air coolent temperature at site in K
eta_m=85 //Mechanical efficiency in percent
py=100 //Test ambient pressure in kPa
Tcy=280 //Charge air coolent temperature at test in K
Ty=300 //Test ambient temperature in K
//Solution:
//Refer table 27.1, 27.2 and 27.3
m=0.7,n=1.2,q=1 //Exponents
pr=100 //Standard total barometric pressure in kPa
Tcr=298 //Standard charge air coolent temperature in K
Tr=298 //Standard air temperature in K
kr=(px/pr)^m*(Tr/Tx)^n*(Tcr/Tcx)^q //The ratio of indicated power
kr=floor(1000*kr)/1000
alphar=kr-0.7*(1-kr)*(100/eta_m-1) //Power adjustment factor
Pr=Px/alphar //Standard reference brake power in kW
ky=(py/pr)^m*(Tr/Ty)^n*(Tcr/Tcy)^q //The ratio of indicated power at test
alphay=ky-0.7*(1-ky)*(100/eta_m-1) //Power adjustment factor at test
Py=Pr*alphay //Brake power at test in kW (Round off error)
//Results:
printf("\n Power developed under test ambient conditions, Py = %.0f kW",Py)
//Round off error in the value of 'Py'
