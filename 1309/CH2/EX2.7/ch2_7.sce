clc;
clear;
printf("\t\t\tChapter2_example7\n\n\n");
// Determination of the thermal contact resistance
k=14.4; // thermal conductivity of 304 stainless steel in  W/(m.K)from appendix table B2 
T1=543; // temperature in K at point 1
T2=460; // temperature in K at point 2
dT=T1-T2; // temperature difference between point 1 and 2
dz12=0.035; // distance between thermocouple 1 and 2 in cm
qz_per_A=k*dT/dz12; // heat flow calculated in W/m^2 calculated using Fourier's law
printf("\nHeat flow calculated is %.2f kW/sq.m",qz_per_A/1000);
dz56=4.45; // distance between thermocouple 5 and 6 in cm
dz6i=3.81; // distance between thermocouple 6 and interface in cm
dz5i=dz56+dz6i; // distance between thermocouple 5 and interface in cm
T5=374; // temperature in K at point 5
T6=366; // temperature in K at point 6
T_ial=T5-(dz5i*(T5-T6)/dz56); // temperature of aluminium interface in K
printf("\nTemperature of aluminium interface is %.1f K",T_ial);
dzi7=2.45; // distance between thermocouple 7 and interface in cm
dz78=4.45; // distance between thermocouple 7 and 8 in cm
dzi8=dzi7+dz78; // distance between thermocouple 8 and interface in cm
T7=349; // temperature in K at point 7
T8=337; // temperature in K at point 8
T_img=dzi8*(T7-T8)/dz78+T8; // temperature of magnesium interface in K
printf("\nTemperature of magnesium interface is %.1f K",T_img);
Rtc=(T_ial-T_img)/qz_per_A;
printf("\nThe required thermal contact resistance is %.2e K. sq.m/W",Rtc);
