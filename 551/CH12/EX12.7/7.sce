clc
dh=840; //kJ/kg; Adiabatic enthalpy drop
h1=2940; ///kJ/kg;
p2=0.1; //bar
h_f2=191.8; //kJ/kg

n_rankine=(dh)/(h1-h_f2)*100;
disp("rankine efficiency=")
disp(n_rankine)

S=3600/dh; //Specific steam combustion
disp("Specific steam combustion=")
disp(S)
disp("kg/kWh")