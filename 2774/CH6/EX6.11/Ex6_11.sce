clc
// solution
//initialization of variables
// refer to fig 6.10c

QdotC=300 //heating Load in KWh or heat rejected by condensor
T1=-12 // evaporator temperature in degree celsius
P2=800 // condensor pressure in kPa 
h1=240 // specific enthalpy of saturated R-134a vapour @ -12 degree celsius from table D.1
s1=0.927 // specific entropy of saturated R-134a vapour @ -12 degree celsius from table D.1
s2=s1 // isentropic process
h3=93.4 //specific enthalpy of saturated R-134a liquid @ 800 kPa from tableD.2

// extrapolating enthalpy from table D.2 @ 0.8 MPa for s=0.927
h2=273.7-(0.9374-s2)*(284.4-273.7)/(0.9711-0.9374)

// QdotE=mdot*(h1-h4) is heat transfer rate
mdot=QdotC/(h2-h3)// mass flow rate

WdotC=mdot*(h2-h1)// power given to compressor

//part(a)
COP=QdotC/WdotC // coefficient of performance
printf("The coefficient of performance is %0.2f \n ",COP)

//part(b)
cost=WdotC*0.07 // cost of electricity
printf("The cost of electricity is $ %0.3f /hr \n",cost)

//part(c)
costgas=(300*3600*0.50)/100000 // cost of gas
printf("The cost of gas is $ %0.2f /hr \n Thus heat pump is better ",costgas)




 
