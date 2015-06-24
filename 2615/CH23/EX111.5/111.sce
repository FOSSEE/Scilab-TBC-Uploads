clc
//initialisation of variables
d=60//mm
m=8600//kg-cm
G=800000//kg-cm
l=150//cm
//CALCULATIONS
T=16*m/(%pi*(6)^3)//kg/cm^2
Fhi=(180/%pi)*((m*l*2)/(G*%pi*(3)^4))//degree
//RESULTS
printf('the maximum stress on a cross section of the shaft=% f degree',Fhi)
