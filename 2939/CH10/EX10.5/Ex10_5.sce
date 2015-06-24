//Ex10_5

clc;

// Given:
ai=14000;// counts per min per 0.1 cm^3, initial activity of blood
Si=1.4*10^5;// c min^-1 cm^-3, initial specific activity
a=250;// 250 net counts in 10 min, this implies 25 net counts in a min

// Formula: Si/Sr = V

// Solution:
V=Si/25;// total blood in the patient in cm^3
V1=V/1000;// volume in lit
printf("The volume of blood in the patient is = %f lit",V1)



