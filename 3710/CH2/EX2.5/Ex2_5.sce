//Example 2.5, Page Number 70
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Contact Potential Difference
clc;
nd=10**22 //Donor Impurity Level in per meter cube
na=10**24 //Acceptor Impurity Level in per meter cube
n=2.4*(10**19) //Intrinsic Electron Concentration in per meter cube
T=290 //Temperature in Kelvin
k=1.38*(10**-23) //Botlzmann Constant in meter square kilogram per second square Kelvin
e=1.6*(10**-19) //Charge of an electron in coulombs

//From Equation 2.45 
v=(k*T/e)*log1p((nd*na)/(n**2)) //v is the contact potentital difference in volts
v=fpround(v,2)
mprintf("The Contact Potential Difference is:%.2f Volts ",v)
