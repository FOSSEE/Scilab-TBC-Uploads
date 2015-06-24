clc;
clear;

printf("\n Example 9.6\n");

d=25e-3; //Diameter of copper sphere
l=25e-3; //Side length of a copper cube
h=75; //External heat transfer coefficient
rho_cu=8950; //Density of copper at mean temperature
Cp=0.38e3; //Heat capacity of copper at mean temperature
k=385; // Thermal conductivity of copper at mean temperature
Tf=923; //Temperature of the furnace
Ta=368; //Temperature at which they are annealed
t=5*60; // time taken

V_Ae_S=(d/6); //V/Ae tor the sphere
printf("\n V/Ae tor the sphere = %.2f * 10^-3 m",V_Ae_S*1e3);
V_Ae_C=(l/6); //V/Ae tor the cube
printf("\n V/Ae tor the cube = %.2f * 10^-3 m",V_Ae_C*1e3);
Bi=h*(V_Ae_S)/k;
//The use of a lumped capacity method is therefore justified
tao=rho_cu*Cp*V_Ae_S/h;
//Then using equation 9.49
//theta=T
x=poly([0],'x');
T=roots(((x-Ta)/(Tf-Ta))-%e^(-t/tao));
printf("\n Temperature of the sphere and of the cube at the end of 5 minutes = %.0f degree C",T-273);