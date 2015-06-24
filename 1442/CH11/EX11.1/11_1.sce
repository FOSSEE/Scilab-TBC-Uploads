clc
//initialisation of variables
h1= 251.4 //kJ/kg
v= 0.001017 //m^3/kg
p2= 2000 //Mpa
p1= 20 //Mpa
h2= 253.4
h3= 3247.6 //kJ/kg
h4= 2349.3 //kJ/kg
Tc= 60.06 //C
Th= 400 //C
//CALCULATIONS
h2= h1+v*(2-p1)
q12= 0
w12= h1-h2
q23= h3-h2
w23= 0
q34= 0
w34= h3-h4
q41= h1-h4
qnet= q12+q23+q34+q41
wnet= w12+w23+w34
n= wnet/q23
ncarnot= 1-((273.15+Tc)/(273.15+Th))
//RESULTS
printf (' enthalpy= %.1f kJ/kg',h2)
printf (' \n efficiency= %.3f ',n)
printf (' \n carnot efficiency= %.3f ',ncarnot)
