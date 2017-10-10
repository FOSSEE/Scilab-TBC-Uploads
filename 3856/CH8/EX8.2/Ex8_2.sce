//Calculate the Equivalent Conductance of NaCl solution

//Example 8.2

clc;

clear;

c1=0.0560;  //Molar concentration of KCl in solution mol L^-1

equiV1=134.5;  //Equivalent coductance of KCl in ohm^-1 equiv^-1 cm^2

k1=(equiV1*c1)/1000;  //Specific conductance of the KCl solution in ohm^-1 cm^-1

C1=0.0239;  //Conductance of the solution containing KCl in ohm^-1

c2=k1/C1;  //Cell constant of the solution in cm^-1

C2=0.0285;  //Conductance of the solution containing KCl and NaCl in ohm^-1

k2=c2*C2;  //Specific coductance of the NaCl solution ohm^-1 cm^-1

c3=0.0836;  //Molar concentration of NaCl in solution in mol L^-1

equiV2=(1000*k2)/c3;  //Equivalent conductance of NaCl in ohm^-1 equiv^-1 cm^2

printf("Equivalent Conductance = %.1f ohm^-1 equiv^-1 cm^2",equiV2); 
