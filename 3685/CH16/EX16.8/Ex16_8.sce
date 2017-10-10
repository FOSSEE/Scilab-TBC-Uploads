clc
hf_co2 = -393522 // Enthalpy of reaction in kJ/kg mol
hf_h20 = -285838// Enthalpy of reaction in kJ/kg mol
hf_ch4 = -74874// Enthalpy of reaction in kJ/kg mol
D = hf_co2 + (2*hf_h20) //Heat transfer 
QCV = D-hf_ch4 // Q_cv

printf("\n Example 16.8\n")
printf("\n Heat transfer per kg mol of fuel is %d kJ",D)
printf("\n Q_cv is %d kJ",QCV)
//The answers vary due to round off error

