clear all; clc;
//This numerical is Ex 1_1E,page 9.
Pso=20.5
Psc=20.5*550//converting hp to fps system
Qo=385
Qc=385/449//converting gpm to ft^3/s
E=0.83
dp=E*Psc/(Qc*144)
printf('The pressure rise is %g psi',dp)
disp("After rounding off,pressure rise is 75.8 psi")
dpr=75.8
dHw=75.8*144/62.4//62.4 is accelaration due to gravity in fps system
printf(' The head of water is %g ft of water',dHw)
disp("After rounding off the value of head of water the answer is 175 ft of water.")
dhwr=175//rounded off value of head of water
sg=0.72//specific gravity of oil
dHo=dhwr/sg
printf(' The head of oil is %g ft of oil',dHo)
disp("After rounding off the value of head of oil the answer is 243 ft of oil.")
