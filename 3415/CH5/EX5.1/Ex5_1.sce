//fiber optic communications by joseph c. palais
//example 5.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n1=1.46//core refractive index
n2=1//cladding refractive index (air)

//to find
Thetac=asind(n2/n1)//critical angle in degree

mprintf(' Critical angle =%i degree',Thetac)
