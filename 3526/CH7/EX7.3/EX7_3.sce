clc;funcprot(0);//EXAMPLE 7.3
//page 184
// Initialisation of Variables
F=40000;..........// Maximum Tensile load in lb
K=9000;........//Fracture toughness of Ceramic
w=3;.........// plate made of Sialon width  
//CALCULATIONS
A=F*sqrt(%pi)/K;......//Area of ceramic
T=A/w;........// Thickness of Ceramic
disp(T,"THickness of ceramic :")
