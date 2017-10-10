//chapter 2
//example 2.1
//page 29
 
A=60.2d4 // ampere per square m per square kelvin
T=2500 // kelvin
phi=4.517 // eV
d=0.01d-2 // m
l=5d-2 // m

b=11600*phi
Js=A*T^2*exp(-b/T)
a=%pi*d*l

emission_current=Js*a

printf("emission current=%f A",emission_current)
