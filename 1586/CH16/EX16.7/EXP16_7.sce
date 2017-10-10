clc;funcprot(0);//EXAMPLE 16.7
// Initialisation of Variables
M=56;.........//Molecular Weight of Polyethylene 
P=0.88;........//Measured density of PolyethyleneInitial
P1=0.915;........//Measured density of Polyethylene     Final
Pa=0.87;........//Density of Amorphous Polyethylene 
//Caluculations
Pc=M/(7.42*4.95*(2.55*10^-24)*6.02*10^23);...........//Density of complete Crystalline polymer
Cp1= ((Pc/P)*((P-Pa)/(Pc-Pa)))*100;..................//Crystallinity  of Polyethylene initial
Cp2= ((Pc/P1)*((P1-Pa)/(Pc-Pa)))*100;................//Crystallinity  of Polyethylene final
disp(Pc,"Density of  Crystalline polymer:")
disp(Cp1,"Crystall. of Polyethylene initial:")
disp(Cp2,"Crystall. of Polyethylene final:")
