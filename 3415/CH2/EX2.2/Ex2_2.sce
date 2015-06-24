//fiber optic communications by joseph c. palais
//example 2.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n1=-1//refractive index of air
n2=1.5//refractive index of glass medium
theta_i_1=0//angle of incidence case 1 in degree
theta_i_2=15//angle of incidence case 2 in degree
//to find
theta_t_1=abs(asind(n1/n2*sind(theta_i_1)))//transmission angle in degree for case 1
mprintf("Transmission angle=%fdegree",theta_t_1)
theta_t_2=abs(asind(n1/n2*sind(theta_i_2)))
mprintf("\nTransmission angle=%fdegree",theta_t_2)//transmission angle in degree for case 2

theta_t_3=abs(asind(n2/n1*sind(theta_t_2)))//  trans mission angle for example 2_1 if ray travels from glass to air in degrees
mprintf("\nTransmission angle if ray travels from glass to air=%fdegree",theta_t_3)
