//ques-18.23
//Calculating standard free energy change for the reaction
clc
//G = free energy (in kJ/mol)
G1=-16.8;//ammonia
G2=-86.7;//NO
G3=-237.2;//water
G=G2+G3*(1.5)-G1;//free energy change
printf("The free energy change required is %.1f kJ/mol.",G);
