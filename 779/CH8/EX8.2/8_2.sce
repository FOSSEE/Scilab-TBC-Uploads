lhw = 1858.5; // Latent heat of water
Tew = 220+273;
Sw = lhw/Tew; 
Tig = 1100; // Initial temperature of the gas
Tfg = 550; // Final ""
k = 1*lhw/(Tig-Tfg); // k = mg_dot*cpg
Tg2 = 823; Tg1 = 1373
Sg = integrate('k/T','T',Tg1,Tg2)
St = Sg+Sw; 
disp("kJ/K",St,"Total change in entropy is ")
T0 = 303;
disp("kJ",T0*St,"Increase in unavailable energy is")