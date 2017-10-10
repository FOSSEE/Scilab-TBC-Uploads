//page 195
clc;funcprot(0);//EXAMPLE 7.9
// Initialisation of Variables
Ln1=0.5
Ln2=-2.0

sigma1=52;........//the maximum allowed stress level on ceramic at one point in MP.
sigma2=23.5;.......//the maximum allowed stress level on ceramic at another point in MP.
//CALCULATIONS
m=(Ln1-Ln2)/(log(sigma1)-log(sigma2));.......//Weibull modulus of ceramic
disp(m,"Weibull modulus of ceramic:")
