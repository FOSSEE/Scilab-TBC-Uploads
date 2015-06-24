clc;
DPT=8; // Dew point temperature in degree celcius
p=100; // Pressure of air in kPa
T=25; // Temperature of air in degree celcius
// (a).partial pressure of water vapour in air
pv=1.0584; // Saturation pressure of water at DBT in kPa
disp ("kPa",pv,"(a).partial pressure of water vapour in air = ");
// (b).Specific humidity
sh=0.622*pv/(p-pv);//Specific humidity
disp ("kg of water vapour /kg of dry air",sh,"(b).Specific humidity =");
// (c).Relative humidity
pg=3.169; // Saturation pressure of water at T in kPa
RH=pv/pg; //Relative humidity
disp ("%",RH*100,"(c).Relative humidity =");
