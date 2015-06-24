//Calculations on Otto cycle
clc,clear
//Given:
r=8 //Compression ratio
P1=1,P3=50 //Pressure at 1, 3 in bar
T1=100+273 //Temperature at 1 in K
m=1 //Air flow in kg
R=0.287 //Specific gas constant in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.22
//Point 1
V1=m*R*10^3*T1/(P1*10^5) //Ideal gas equation, Volume at 1 in m^3
//Point 2
P2=P1*r^g //Pressure at 2 in bar
V2=V1/r //Volume at 2 in m^3
T2=P2*V2*T1/(P1*V1) //Temperature at 2 in K
//Point 3
V3=V2 //Constant volume process, Volume at 3 in m^3
T3=(P3/P2)*T2 //Temperature at 3 in K (Wrong in book)
//Point 4
P4=P3*(1/r)^g //Pressure at 4 in bar
V4=V1 //Constant volume process, Volume at 4 in m^3
T4=T1*(P4/P1) //Temperature at 4 in K
cv=R/(g-1) //Specific heat at constant volume in kJ/kgK
ratio=(cv*(T3-T2))/(cv*(T4-T1)) //Ratio of heat supplied to the heat rejected (Round off error)
//Results:
printf("\n Point 1:\n Pressure = %d bar, Volume = %.4f m^3, Temperature = %d degreeC",P1,V1,T1-273)
printf("\n\n Point 2:\n Pressure = %.1f bar, Volume = %.4f m^3, Temperature = %.1f degreeC",P2,V2,T2-273)
printf("\n\n Point 3:\n Pressure = %.1f bar, Volume = %.4f m^3, Temperature = %.1f degreeC",P3,V3,T3-273)
printf("\n\n Point 4:\n Pressure = %.2f bar, Volume = %.4f m^3, Temperature = %.1f degreeC",P4,V4,T4-273)
printf("\n\n Ratio of heat supplied to the heat rejected = %.3f\n\n",ratio)
//Textbook answer for T3 is wrong
//Round off error in the value of 'ratio'
