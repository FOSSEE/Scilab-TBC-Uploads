//Calculations on diesel cycle
clc,clear
//Given:
P1=1,P2=50 //Pressure at 1, 2 in bar
V1=1,V3=0.1 //Volume at 1, 3 in m^3
T1=18+273 //Temperature at 1 in K
g=1.4 //Specific heat ratio(gamma)
//Solution:
T2=T1*(P2/P1)^((g-1)/g) //Temperature at 2 in K
V2=V1*(P1/P2)*(T2/T1) //Volume at 2 in m^3
T3=round(T2*(V3/V2)) //Temperature at 2 in K (printing error)
V4=V1 //Constant volume process, volume at 4 in m^3
T4=T3*(V3/V4)^(g-1) //Temperature at 4 in K
eta=1-((T4-T1)/(g*(T3-T2))) //Efficiency of diesel cycle
//Results:
printf("\n Temperature at 1, T1 = %d K\n Temperature at 2, T2 = %.1f K\n Temperature at 3, T3 = %d K\n Temperature at 4, T4 = %.1f K",T1,T2,T3,T4)
printf("\n The thermal efficiency of the cycle, eta = %.1f percent\n\n",eta*100)
//Answer in the book is printed wrong
