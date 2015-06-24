//ex6
//Internal Energy of Superheated Vapor using linear interpolation
clc
disp('h1=2855.8 @ T1=200 C and h2=2961.0 @ T2=250 C and h=2890 lies in between these two so using linear interpolation we can get Temperature ');
h1=2855.8;//Enthalpy at T1 in kJ/Kg
T1=200;//temp in C
h2=2961.0;//Enthalpy at T2 in kJ/Kg
T2=250;//Temp T2 in C
h=2890;//Enthalpy in kJ/kg at which temp is to be determined
T=(T2-T1)/(h2-h1)*(h-h1)+T1;//Temp for given value of enthalpy in C
printf('Temperature = %.1f C',T);
