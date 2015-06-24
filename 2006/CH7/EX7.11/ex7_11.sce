clc;
p1=200; // Pressure of fluid at inlet in kPa
T1=200; // Temperature of fluid at inlet in degree celcius
V1=700; // Velocity of fluid at inlet in m/s 
V2=70; // Velocity of fluid at outlet in m/s 
//   (a).Reversible Adiabatic process
// state of steam entering diffuser (superheated)
h1=2870.5;// specific enthalpy in kJ/kg 
s1=7.5066; // specific entropy in kJ/kg K
h2=h1+(V1^2-V2^2)/2000; // From first and second laws
s2=s1; // Isentropic peocess
// From superheated table
p2s=550; // Pressure of fluid at outlet in kPa
T2=324; // Temperature of fluid at outlet in degree celcius
disp ("oC",T2,"Temperature of fluid at outlet =","kPa",p2s,"Pressure of fluid at outlet = ","(a).Reversible adiabatic process");
//   (b).Actual diffusion
// for the same change in K.E, from first law
h2=3113.1;// specific enthalpy in kJ/kg
p2=400; // Actual exit pressure in kPa
t2=322.4; // from superheated table in degree celcius
eff_d=(p2-p1)/(p2s-p1); // Diffuser efficiency
disp ("%",eff_d*100,"Diffuser efficiency = ","oC",t2,"The exit temperature =","(b).Actual diffusion");
