//EXAMPLE 26.34
//4-POLE LAP WOUND DC MACHINE

clc;
funcprot(0);

//Variable Initialisation
Ra=0.15;...........//Armature resistance in Ohms
P=4;..............//Number of poles
Al=P;...............//Number of parallel paths if generator is lap wound
Ral=Al*Ra;............//Armature resistance if generator is wave wound
disp(Ral,"Armature resistance if generator is wave wound in Ohms:");
