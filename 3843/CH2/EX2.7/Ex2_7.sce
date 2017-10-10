// Example 2_7
clc;funcprot(0);
// Given data
T=500+273;// K
rho=24;// The density in kg/m^3
R=0.462;// kJ/kg.K
v=1/rho;// m^3/kg

// Calculation
// (a)
P=rho*R*T;// kPa
printf("\n(a)Using the ideal gas equation,The pressure of steam(P)=%4.0f kPa.",P);
// (b)
// Using values for a and b from Table B-8,the vander Waals equation provides
a=1.703;
b=0.00169;
P=((R*T)/(v-b))-(a/v^2);// kPa
printf("\n(b)Using the vander Waals equation,the pressure of steam(P)=%4.0f kPa.",P);
// (c)
// Using values for a and b from Table B-8,the Redlich-Kwong equation provides
a=43.9;
b=0.00117;
P=((R*T)/(v-b))-(a/(v*(v+b)*sqrt(T)));// kPa
printf("\n(c)Using the Redlich-Kwong equation,the pressure of steam(P)=%4.0f kPa.",P);
// (d)
T_c=647.4;// The critical temperature in K
T_R=T/T_c;// The reduced temperature
P_c=8000;// The critical pressure in kPa
P_R=P/P_c;// The reduced pressure 
// By using the reduced temperature and the reduced pressure
Z=0.93;// The compressibilty factor
P=(Z*R*T)/v;// kPa
printf("\n(d)By using the compressibilty factor,the pressure of steam(P)=%4.0f kPa.",P);
// (e)
// By using the steam tables,
P=8000;// kPa
printf("\n(e)By using the steam tables,the pressure of steam(P)=%4.0f kPa.",P);
