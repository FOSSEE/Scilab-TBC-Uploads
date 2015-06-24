//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 2


clear;
clc;

//Given:
m = 1; //mass of water(kg)
T1 = 300; //temperature of surrounding(K)
T2 = 273; //temperature of water(K)
Hf = 334.11; //latent heat of fusion of ice(kJ/kg)


//To determine minimum amount of work and heat given upto surrounding

//(a)
Q2 = m*Hf; //heat absobed at temperature T2
W = ((Q2*(T1-T2))/T2); //minimumm amount of work required
mprintf('Minimum amount of work required is %f kJ',W);
 
//(b)
//Q1 is the heat given up the surrounding
Q1 = W+Q2;
mprintf('\nHeat given upto surrounding is %f kJ',Q1);


//end