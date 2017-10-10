clc;funcprot(0);//EXAMPLE 7.9
// Initialisation of Variables
n=7;.............//The total number of specimens
F=n+1;...........//The probability of failure of ceramic
sigma1=52;........//the maximum allowed stress level on ceramic at one point in MP.
sigma2=23.5;.......//the maximum allowed stress level on ceramic at another point in MP.
//CALCULATIONS
m=(Ln1-(Ln2))/(log(sigma1)-log(sigma2));.......//Weibull modulus of ceramic
disp(m,"Weibull modulus of ceramic:")
