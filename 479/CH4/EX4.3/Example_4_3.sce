//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.3
clear;
clc;

//Given
Cp = 0.09;//specific heat of metal block in Kcal/Kg K
m = 10;//mass of metal block in Kg
T1 = 323;//initial temperature of the block in K
T2 = 298;//final temperature of the block in K
//constant pressure process
//To find out entropy change of block,air and total entropy change

//(i)To calculate the entropy change of block
del_S1 = m*Cp*log(T2/T1);
mprintf('(i)Entropy change of block is %f Kcal/Kg K',del_S1);

//(ii)To calculate the entropy change of air
Q = m*Cp*(T1-T2);//heat absorbed by air = heat rejected by block in Kcal
del_S2 = (Q/T2);
mprintf('\n (ii)Entropy change of air is %f Kcal/Kg K',del_S2);

//(iii)To calculate the total entropy change
del_St = del_S1+del_S2;
mprintf('\n (iii)Total entropy change is %f Kcal/Kg K',del_St);
if(del_St == 0)
    mprintf('\n Process is reversible');
else
    mprintf('\n Process is irreversible');
end
//end 