//Example 1.1(b)

clear;

clc;

Ri=100*10^3;//Input Resistance

Aoc=100;//Open Circuit Gain

Ro=1;//Output Resistance

Rs=50*10^3;//Source Resistance

RL=4;//Load Resistance

Av=(Ri/(Rs+Ri))*Aoc*(RL/(Ro+RL));//Overall Gain

Vredin=(Ri/(Ri+Rs))*100;//Percentage Reduction in Source Voltage due to Input Loading

Vredo=(RL/(Ro+RL))*100;//Percentage Reduction in Output Voltage due to output loading

printf("Overall Gain (Av)=%.2f V/V",Av);

printf("\nPercentage Input Loading=%.2f (Not mentioned in book)",Vredin);

printf("\nPercentage Output Loading=%.2f (Not mentioned in book)",Vredo);