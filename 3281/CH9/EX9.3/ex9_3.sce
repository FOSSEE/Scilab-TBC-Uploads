//Page Number: 451
//Example 9.3
clc;
//Given
XeGe=4.0; //eV
XeGaAs=4.1; //eV
delEgGe=0.78; //eV
delEgGaAs=1.42; //eV

//Conduction band differential
delEc=XeGe-XeGaAs;
disp('eV',delEc,'Conduction band differential:');

//Valence band differential
delEv=delEgGaAs-delEgGe-delEc;
disp('eV',delEv,'Valence band differential:');
