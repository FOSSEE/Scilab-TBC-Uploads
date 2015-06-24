clc;
DBT=35; // Dry bulb temperature in degree celcius
WBT=23; // Wet bulb temperature in degree celcius
P=100; // Pressure of air in kPa
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
// (a).Humidity ratio
hv=2565.3; // specific enthalpy hg at DBT in kJ/kg 
hfWBT=96.52; hfgWBT=2443; // specific enthalpy at WBT in kJ/kg 
PsatWBT=2.789;// Saturation pressure at WBT in kPa
shWBT=0.622*PsatWBT/(P-PsatWBT);// specific humidity
sh=((Cpo*(WBT-DBT))+(shWBT*hfgWBT))/(hv-hfWBT); // Humidity ratio
disp ("kg w.v /kg d.a",sh,"(a).Humidity ratio =");
// (b).Relative Humidity
pv=sh*P/(0.622+sh); // Partial pressure of water vapour
pg=5.628; // Saturation pressure at DBT in kPa
RH=pv/pg; //Relative Humidity
disp ("%",RH*100,"(b).Relative Humidity =");
// (d).Dew point temperature
DPT=17.5; // Saturation temperature at pg in degree celcius
disp ("oC",DPT,"(d).Dew point temperature =");
// (e).Specific volume
v=(R*(DBT+273))/(P-pv); // Specific volume
disp ("m^3/kg",v,"(e).Specific volume = ");
// (d).Enthalpy of air
h=(Cpo*DBT)+(sh*hv); //Enthalpy of air
disp ("kJ/kg d.a",h,"(d).Enthalpy of air =");
