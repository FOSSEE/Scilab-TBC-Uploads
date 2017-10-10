clc;funcprot(0);//EXAMPLE 6.6
// Initialisation of Variables
Fs=45000;.......//The flexural strength of a composite  material in psi
Fm=18*10^6;........//The flexural modulus of composite material in psi
w=0.5;.......//wide of sample in in
h=0.375;......//Height of sample in in
l=5;..........//Length of sample in in
//CALCULATIONS
F=Fs*2*w*h^2/(3*l);......//The force required to fracture the material in lb
delta=(l^3)*F/(Fm*4*w*h^3);.......//The deflection of  the sample at fracture 
disp(F,"The force required to fracture the material in  lb:")
disp(delta,"The deflection of  the sample at fracture in in")
