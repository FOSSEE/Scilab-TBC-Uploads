//fiber optic communications by joseph c. palais
//example 2.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n1=1//refractive index of air
n2=1.5//refractive index of glass medium
theta_i_1=0//angle of incidence case 1 in degrees
theta_i_2=15//angle of incidence case 2 in degrees
//to find
theta_t_1=(asind(n1/n2*sind(theta_i_1)))//Tramsmission angle in degrees
mprintf("Transmission angle for %f degree incident angle=%fdegree",theta_i_1,theta_t_1)
theta_t_2=(asind(n1/n2*sind(theta_i_2)))
mprintf("\nTransmission angle for %f degree incident angle=%fdegree",theta_i_2,theta_t_2)
