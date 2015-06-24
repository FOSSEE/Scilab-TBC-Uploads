Pl = 396; //wattmeter reading on open circuit test 
Vl = 120; //voltmeter reading on open circuit test 
Il = 9.65; //ammeter reading o open circuit test 
a = 2400/120; //turns ratio 

theata = acos(Pl/(Vl*Il)); //phase difference between voltage and current 
Irl = Il*cos(theata); //resistive part of Im 
Ixl = Il*sin(theata); //reactive part of Im

rl = Vl/Irl; //low voltage winding resistance 
rh = (a^2)*rl; //rl on the high side 
xl = Vl/Ixl; //magnetizing reactance referred to the lower side 
xh = (a^2)*xl; //corresponding high side value 

Ph = 810; //wattmeter reading on short circuit test 
Vh = 92; //voltmeter reading on short circuit test 
Ih = 20.8; //ammeter reading on short circuit test 

Zeh = Vh/Ih; //equivalent impeadance referred to the higher side 
Zel = Zeh/(a^2); //equivalent impedance referred to the lower side
Reh = Ph/(Ih^2); //equivalent resistance referred to the higher side
Rel = Reh/(a^2); //equivalent resistance referred to the lower side
Xeh = sqrt((Zeh^2) - (Reh^2)); //equivalent reactance referred to the   higher side
Xel = Xeh/(a^2); //equivalent reactance referred to the lower side

disp(Zeh,"equivalent impeadance referred to the higher side  = ")
disp(Zel,"equivalent impedance referred to the lower side = ")
disp(Reh,"equivalent resistance referred to the higher side = ")
disp(Rel,"equivalent resistance referred to the lower side = ")
disp(Xeh,"equivalent reactance referred to the   higher side = ")
disp(Xel,"equivalent reactance referred to the lower side = ")
