//Chapter 1, Problem 6
clc;
R1=10;                  //Resistance of R1 in ohms
R2=5;                   //Resistance of R2 in kilohms
R3=100*10^-3;           //Resistance of R3 in ohms
G1=1/R1;                //calculating conductance
G2=1/R2;
G3=1/R3;
printf("Conductance of a conductor of resistance 10 ohms = %f S \n\n\n",G1);
printf("Conductance of a conductor of resistance 5 k.ohms = %f mS \n\n\n",G2);
printf("Conductance of a conductor of resistance 100 miliohms = %f S \n\n\n",G3);
