clc;
y1=0.79; // Volume of Nitrogen in 1 kg of air
y2=0.21; // Volume of Oxygen in 1 kg of air
R_1=8.3143; // Universal gas constant of air in kJ/kmol K
T0=298; // temperature of Surroundings in kelvin
del_Sgen=-R_1*((y1*log (y1))+(y2*log (y2))); //Entropy generation
LW=T0*del_Sgen; // Minimum work
disp ("kJ/kmmol K",LW,"The minimum work required for separation of two gases = ");
