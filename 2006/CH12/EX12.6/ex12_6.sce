clc;
DPT1=30; // Dew point temperature at inlet in degree celcius
DPT2=15; // Dew point temperature at outlet in degree celcius
RH1=0.50; // Relative humidity  at inlet
RH2=0.80; // Relative humidity  at outlet
p=101.325; // Atmospheric pressure in kPa
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
pg1=4.246; // saturation pressure of water at DBT1 in kPa
pg2=1.7051;  // saturation pressure of water at DBT2 in kPa
pv1=RH1*pg1; pv2=RH2*pg2; // Partial pressure of water vapour in air at inlet and outlet
sh1=0.622*pv1/(p-pv1); sh2=0.622*pv2/(p-pv2); // Specific humidities at inlet and outlet
hv1=2556.3;// specific enthalpy hg at DBT1 in kJ/kg
hv2=2528.9;// specific enthalpy hg at DBT2 in kJ/kg
hv3=63;// specific enthalpy hf at DBT 2in kJ/kg
q=(Cpo*(DPT2-DPT1))+(sh2*hv2)-(sh1*hv1)+((sh1-sh2)*hv3); // Heat transfer
disp ("kJ/kg of dry air",q,"Heat removed from the air =");
