//Example 11.1
//Fracture Toughness
//Page No. 354
clc;clear;close;

a=5;                //in mm
a=a*10^-3;             //conversion to m
t=1.27;          //in cm
t=t*10^-2;        //conversion to m
K_Ic=24;          //in MPa*m^(1/2)
sigma=K_Ic/(sqrt(%pi*a)*sqrt(sec(%pi*a/(2*t))));
printf('Since Fracture Toughness of the material is = %g MPa\n and the applied stress is 172 MPa thus the flaw will propagate as a brittle fracture',sigma);
