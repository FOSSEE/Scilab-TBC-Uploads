clc;
// Air conditioning unit
TL=278; // Operating temperature in kelvin
TH=318; // Operating temperature in kelvin
COP1=TL/(TH-TL); // COP of Air conditioning unit
QL=1; // For some calculation purpose
W1=QL/COP1; // Work input of Air conditioning unit
// Food refrigeration unit
TL=258; // Operating temperature in kelvin
TH=318; // Operating temperature in kelvin
COP2=TL/(TH-TL); // COP of Food refrigeration unit
W2=QL/COP2; // Work input of Food refrigeration unit
Wper=(W2-W1)/W1; // Increase in work input
disp ("%",Wper*100,"Increase in work input = ");
