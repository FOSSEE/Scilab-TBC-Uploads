clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.3
// Page 119
printf("Example 3.3, Page 119 \n\n")


a0_2=1; //absorptivity
a2_4=1; //absorptivity
a4_6=0.5; //absorptivity
a6_8=0.5; //absorptivity
a8_=0; //absorptivity
H0_2=0; //Irradiation in W/m^2 um
H2_4=750; //Irradiation in W/m^2 um
H4_6=750; //Irradiation in W/m^2 um
H6_8=750; //Irradiation in W/m^2 um
H8_=750; //Irradiation in W/m^2 um
Absorbed_radiant_flux=1*0*(2-0)+1*750*(4-2)+0.5*750*(8-4)+0;
H = 750*(8-2);      //Incident flux
a = Absorbed_radiant_flux/H;
p = 1-a;          //Since the surface is opaque
printf("\n Absorbed radiant flux = %d W/m^2",Absorbed_radiant_flux);
printf("\n Incident flux = %d W/m^2",H);
printf("\n Absorptivity = %.3f",a);
printf("\n Since the surface is opaque reflectivity = %.3f",p);
