R = 8.314;
N1 = 0.5e-03; N2 = 0.75e-03; // Mole number of system 1 and 2 in kg/mol
T1 = 200; T2 = 300; 
V = 0.02;
Tf = ((N1*T1)+(N2*T2))/(N1+N2); // Final temperature
Uf1 = (3/2)*R*N1*Tf;
Uf2 = (3/2)*R*N2*Tf;
Pf = (R*Tf*(N1+N2))/V;
Vf1 = (R*N1*Tf)/Pf;
Vf2 = V - Vf1;
disp("System 1")
disp("m3",Vf1,"Volume is")
disp("kJ",Uf1,"Energy is")
disp("System 2")
disp("m3",Vf2,"Volume is")
disp("kJ",Uf2,"Energy is")
disp("K",Tf,"Final temperature is")
disp("kPa",Pf,"Final Pressure is")