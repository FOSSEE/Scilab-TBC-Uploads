clc;
Q12=-250; // Heat transfer during Discharging of battery in kcal
W21=-0.53; // Consumption of electricity dring Charging process in kWh
Q21=(W21*3600)-(Q12*4.1868); // First law of thermodynamics
disp ("kJ",Q21,"Heat loss from battery during charging process");
