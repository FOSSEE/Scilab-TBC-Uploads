//fiber optic communications by joseph c. palais
//example 3.9
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n2=1.5//refractive index of the glass
n1=1//refractive index of the air

//to find
theta_B1=atand(n2/n1)//brewster angle in degree for air to glass interface
theta_B2=atand(n1/n2)//brewster angle in degree for glass to air interface
mprintf("Brewster angle  for air to glass interface =%f degree",theta_B1)
mprintf("\nBrewster angle  for  glass to air interface =%f degree",theta_B2)
