clc;
T1=35; // Temperature of freon 12 before throttling in degree celcius
T2=5; // Temperature of freon 12 after throttling in degree celcius
// from property table of freon 12
h1=69.49;// specific enthalpy in kJ/kg 
hf2=40.66; hfg2=148.86; // specific enthalpy in kJ/kg 
h2=h1; // throttling process
x2=(h2-hf2)/hfg2; // Quality of Freon 12 vapour
disp (x2,"Quality of Freon 12 vapour = ");
