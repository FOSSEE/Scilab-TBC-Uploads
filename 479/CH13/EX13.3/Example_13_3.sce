//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.3
clear;
clc;

//Given
x1 = 0.1;//mole fraction of methane
x2 = 0.9;//mole fraction of propane
P = [28.1 31.6 35.1];//Pressure in Kgf/sq cm are
K1 = [5.8 5.10 4.36];//Vapourisation constants of methane at the corresponding presssures
K2 = [0.61 0.58 0.56];//Vapourisation constants of propane at the correspondig pressures

//To Calculate the bubble point pressure of the solution
//From equation 13.27 (page no 245)
for i = 1:3
    y1(i) = K1(i)*x1;//mole fraction of methane in the vapour phase
    y2(i)= K2(i)*x2;//mole fraction of propane in the vapour phase
    y(i) = y1(i)+y2(i);//sum of the mole fraction in the vapour phase
end
plot(P,y);
xtitle("y vs pressure","P","y");
P1 = interpln([y';P],1);// in Kgf/sq cm
mprintf('The bubble point pressure of the solution is %f Kgf/sq cm',P1);
//end