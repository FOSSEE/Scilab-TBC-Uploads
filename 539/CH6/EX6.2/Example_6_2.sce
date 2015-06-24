//Computation of Load to Produce Specified Diameter Change

clear;
clc;

printf("\tExample 6.2\n");

del_d=-2.5*10^-3;  //Deformation in dia  in mm
d0=10;             //Initial dia  in mm

v=0.34;           //Poisson ratio for brass

ex=del_d/d0;
printf("\nStrain in x-direction is %f",ex);

ez=-ex/v;
printf("\nStrain in z-direction is %f",ez);

E=97*10^3;        //Modulus of elasticity in MPa
sigma=ez*E;
F=sigma*%pi*(d0^2)/4;

printf("\nApplied force is %d N",F);

//End