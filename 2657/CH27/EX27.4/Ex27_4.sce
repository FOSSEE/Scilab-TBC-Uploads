//Simulating site ambient conditions
clc,clear
//Given:
//Datas are taken from Ex. 27.3
Px=640 //Brake power at site in kW
eta_m=85 //Mechanical efficiency in percent
px=70 //Site ambient air pressure in kPa
py=100 //Standard total barometric pressure in kPa
Tx=330 //Site ambient temperature in K
Ty=300 //Test ambient temperature in K
p2_py=2.5 //Pressure ratio
by=238 //Specific fuel consumption at test in g/kWh
//Solution:
//Refer table 27.1, 27.2 and 27.3
m=0.7,n=1.2,q=1 //Exponents
ky=(py/px)^m //The ratio of indicated power at test
alphay=ky-0.7*(1-ky)*(100/eta_m-1) //Power adjustment factor at test
Py=round(Px*alphay) //Brake power at test in kW
//From fig 27.1
Tx_Ty=Tx/Ty //Temperature ratio
p1_py=0.925 //Ratio
p1=p1_py*py //Air pressure after throttle in kPa (printing error)
Betay=ky/alphay //Fuel consumption adjustment factor at test
bx=by/Betay //Specific fuel consumption at site in g/kWh
//Results:
printf("\n Power developed on the test bed, Py = %d kW",Py)
printf("\n The pressure behind the throttle plate, p1 = %.1f kPa",p1)
printf("\n The fuel consumption adjusted to site ambient conditions, bx = %d g/kWh",bx)
//Answer in the book is printed wrong
