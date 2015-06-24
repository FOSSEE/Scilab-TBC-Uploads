clc;
clear;

printf("\n Example 6.4\n");
l=0.3;//length of tube
printf("\n Given:\n length of tube = %.1f m",l);
id_t=25e-3;//Top internal diameter of tube
printf("\n Top internal diameter of tube = %d mm",id_t*1e3);
id_b=20e-3;//Bottom internal diameter of tube
printf("\n Bottom internal diameter of tube = %d mm",id_b*1e3);
d_f=20e-3;//Diameter of float
printf("\n Diameter of float = %d mm",d_f*1e3);
v_f=6e-6;//Volume of float
printf("\n Volume of float = %d cm^3",v_f*1e6);
Cd=0.7;//Coefficient of discharge
printf("\n Coefficient of discharge = %.1f",Cd);
rho=1000;//Density of water
printf("\n Density of water = %d kg/m^3",rho);
rho_f=4800;//Density of float
printf("\n Density of float = %d kg/m^3",rho_f);
area_t=%pi/4*id_t^2;//Cross-sectional area at top of tube
printf("\n\n Calculations:\n Cross-sectional area at top of tube = %.2f *10^-4 m^2",area_t*1e4);
area_b=%pi/4*id_b^2;//Cross-sectional area at bottom of tube
printf("\n Cross-sectional area at bottom of tube = %.2f *10^-4 m^2",area_b*1e4);
A_f=%pi/4*d_f^2;//Area of float
printf("\n Area of float = %.2f *10^-4 m^2",A_f*1e4);
//When the float is halfway up the tube, the area at the height of the float A1 is given by:
A1=%pi/4*((id_t+id_b)/2)^2;
printf("\n The area of the height of the float A1 is = %.2f *10^-4 m^2",A1*1e4)
//The area of the annulus A2 is given by:
A2=A1-A_f;
printf("\n The area of the annulus A2 is = %.2f *10^-4 m^2",A2*1e4)
//Substituting into equation 6.36:
//The flow rate of water = 
G=Cd*A2*((2*9.81*v_f*(rho_f-rho)*rho)/(A_f*(1-(A2/A1)^2)))^0.5;
printf("\n\n The flow rate of water = %.3f kg/s",G);