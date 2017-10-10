clc;funcprot(0);//EXAMPLE 6.2
// Initialisation of Variables
sigma1=35000;.......//Stress applied of aluminum alloy in psi from table 6-1
e1=0.0035;........//Strain applied of aluminum alloy from table 6-1
sigma2=30000;.......//Stress applied of aluminum alloy  in psi
Lo=50;.........//initial length of  aluminum alloy
//CALCULATIONS
E=sigma1/e1;........//Modulus of elasticity  of aluminum alloy
e2=sigma2/E;.......//Strain applied of aluminum alloy
L=Lo+(e2*Lo);......//The length after deformation of bar in in
disp(E,"Modulus of elasticity  of aluminum alloy from table 6-1:")
disp(L,"The length after deformation of bar in in")
disp(e2,"Strain applied of aluminum alloy:")
