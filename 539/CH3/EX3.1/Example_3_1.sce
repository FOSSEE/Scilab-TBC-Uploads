//Determination of FCC Unit Cell Volume

clear;
clc;

printf("\tExample 3.1\n");

//For FCC a=2*R*sqrt(2)
R=poly([0],'R');

//Edge Length
a=2*R*sqrt(2);

//Volume determination
V=a^3;

disp(V,"Volume is");

//End