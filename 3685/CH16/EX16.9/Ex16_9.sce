clc
// Below values are taken from table
Hr = -249952+(18.7*560)+(70*540)
Hp = 8*(-393522+20288)+9*(-241827+16087)+6.25*14171+70*13491
Wcv = 150 // Energy out put from engine in kW
Qcv = -205 // Heat transfer from engine in kW
n = (Wcv-Qcv)*3600/(Hr-Hp)
printf("\n Example 16.9 \n")
printf("\n Fuel consumption rate is %f kg/h",n*114)
//The answers vary due to round off error

