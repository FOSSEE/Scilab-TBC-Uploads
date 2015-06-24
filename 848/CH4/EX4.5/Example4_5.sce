//clear//
//Caption :To find out the Internal Quantum Efficiency and Internal Power level of LED source
//Example4.5
//page149
clear;
clc;
tuo_r = 30e-09;//radiative recombination in seconds
tuo_nr =100e-09;//non-radiative recombination in seconds
Etta_internal = 1/(1+(tuo_r/tuo_nr));//internal quantum efficiency
h = 6.6256e-34; //Plank's constant
C = 3e08; //velocity in m/sec
q = 1.602e-19; //electron charge in coulombs
I = 40e-03;//drive current in Amps
Lamda = 1310e-09;// peak wavelength of InGaAsP LED
Pinternal = (Etta_internal*((h*C)/q))*(I/Lamda);//internal power level
disp(Pinternal,'THE INTERNAL POWER GENRATED WITH IN LED SOURCE IN WATTS IS');
disp(Etta_internal,'The internal Quantum efficiency for the given radiative and non-radiative recombination time is');
disp(Etta_internal*100,'Internal Quantum Efficiency in Percentage');
//RESULT
//THE INTERNAL POWER GENRATED WITH IN LED SOURCE IN WATTS IS    
//0.0291427  
//The internal Quantum efficiency for the given radiative and non-radiative recombination time is 0.7692308  
//Internal Quantum Efficiency in Percentage   
// 76.923077  
