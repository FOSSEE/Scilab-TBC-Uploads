clc;
warning("off");
printf("\n\n example14.3 - pg727");
T=40+273.15;  //[K] - temperature
P=1;  //[atm] - pressure
Cp=1005;  //[J/kg*K] - heat capacity 
M=28.966;  //[kg/mole] - molecular weight
R=8314.3;  //[atm*m^3/K*mole] - gas constant
// using the formula Cv=Cp-R/M
Cv=Cp-R/M;
y=Cp/Cv;
mu=19.11*10^-6;  //[kg/m*sec] - viscosity of air 
// using the original Eucken correlation
k_original=mu*(Cp+(5/4)*(R/M));
printf("\n\n From the original Eucken correlation\n k=%fW/m*K",k_original);
// using the modified Eucken correlation
k_modified=mu*(1.32*(Cp/y)+(1.4728*10^4)/M);
printf("\n\n From the modified Eucken correlation \n k=%fW/m*K",k_modified);
printf("\n\n As discussed, the value from the modified Eucken equation is highre than the experimental value(0.02709), and the value predicted by the original Eucken equation is lower than the experimental value , each being about 3 percent different, in this case");

