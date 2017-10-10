//Ex no.17.7,Page no.383
clc;clear;close;

//Initilization of Variables

P=12 //KN //Load
sigma_s=75 //N/mm**2 //shear stress
e=12 //cm
r_1=2.5 //cm

//Calculations

//A=(2*S*l)*(2)**0.5
//sigma_s=P*A**-1 //MPa //shear stress

//After substituting values and simplifying we get
//sigma_s=16.97*S**-1 //MPa

//I_g=S*l*(3*b**2+l**2)*(6)**-1 //cm**4 //Polar moment of Inertia of weld

//After substituting values and simplifying we get
//I_g=180.833*S //cm**4
r_2=((8*2**-1)**2)+((5*2**-1)**2)**0.5 //cm //max radius of weld

//sigma_s_2=P*e*r_2*I_g**-1 //MPa //shear stress due to bending moment

cos_theta=r_1*r_2**-1

//Now using the relation
//sigma_s=(sigma_s_1**2+sigma_s_2**2+2sigma_s_1*sigma_s_2*cos_theta

S=(2363.8958*5625**-1)**0.5 //cm //size of the weld

//Result
printf("size of the weld = %.3f cm",S)
