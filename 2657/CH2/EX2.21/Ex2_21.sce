//Calculations for comparison of Atkinson and Otto cycle
clc,clear
//Given:
r=6 //Compression ratio
P1=1,P3=20 //Pressure at 1, 3 in bar
T1=27+273 //Temperature at 1 in K
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.34
eta_otto=1-1/r^(g-1) //Efficiency of Otto cycle (printing error)
//For Atkinson cycle
e=(P3/P1)^g //Expansion ratio
eta_atk=1-g*(e-r)/(e^g-r^g) //Efficiency of Atkinson cycle
//Results:
printf("\n Efficiency of Otto cycle = %.2f percent",eta_otto*100)
printf("\n Efficiency of Atkinson cycle = %.1f percent\n\n",eta_atk*100)
//Answer in the book is printed wrong
