//Calculations on unsupercharged SI engine
clc,clear
//Given:
Py=640 //Brake power at test in kW
py=98 //Test ambient pressure in kPa
Ty=303 //Test ambient temperature in K
phiy=0.8 //Relative humidity at test
//Solution:
//Refer table 27.1, 27.3
psy=4.2 //Saturation vapour pressure at test in kPa
psr=3.2 //Standard saturation vapour pressure in kPa
pr=100 //Standard total barometric pressure in kPa
Tr=298 //Standard air temperature in K
phir=0.3 //Standard relative humidity
alpha_a=((pr-phir*psr)/(py-phiy*psy))^1.2*(Ty/Tr)^0.6 //Correction factor for CI engine
Pr=round(alpha_a*Py) //Standard reference brake power in kW
//Results:
printf("\n The power at standard reference conditions, Pr = %d kW",Pr)
