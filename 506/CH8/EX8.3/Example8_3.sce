clear;
clc;

//Caption:To derive output impedence of given figure in open circuit-voltage short-circuit-current theorem
//Solution

//Yo = I/Vo
//When current in a short circuit placed across the output terminals and V is the open circuit voltage
disp('When current in a short circuit placed across the output terminals and V is the open circuit voltage');
disp('I = -hf*I1=-(hf*Vs)/(Rs+hi)');
//Applying KVL
disp('Vs = I1*(Rs+hi)+hr*V = -ho*V*(Rs+hi)/hf+hr*V');
disp('or');
disp('V = -(hf*Vs/(Rs+hi))/(ho-hf*hr(Rs+hi))');

//end