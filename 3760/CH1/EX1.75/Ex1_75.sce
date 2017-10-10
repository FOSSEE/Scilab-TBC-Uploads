clc;
// A and B are two transformer shown in fig 1.85
im=0.1; // magnetizing current
// Since SA(secondary winding for transformer A) is connected directly across 200 v supply, so the   magnetizing current required  to establish the flux must flow through SA, therefore current taken by winding PA(primary winding for transformer A) is zero
// Since voltage across SA is 200 v , voltage across PA has to be 200 v by transformer action
// As a result of it , voltage across PB is zero, therefore induced emf in SB is zero
printf('Current in secondary winding of transformer A is %f A',im);
disp('Current in primary winding of transformer A is zero');
disp('Voltage across secondary winding of transformer B is zero'); 
 
 
