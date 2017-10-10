clc;funcprot(0);//EXAMPLE 15.2
//page 462
// Initialisation of Variables
R=2.5;..........//Ratio of O to Si in SiO2
W1=69.62;........//Weight of B2O3 in g/ml
W2=60.08;........//Weight of SiO2 in g/ml
//CALCULATIONS
Fb1=(R-2)/3.5;...........//Mole Fraction of B2O3
Fb2=1-Fb1;.........//Mole fraction of SiO2
Wp=((Fb1*W1)/((Fb1*W1)+(Fb2*W2)))*100;.......//Weight Percent of B2O3
disp(Fb1,"Mole Fraction of B2O3:")
disp(Wp,"Weight Percent of B2O3:")
