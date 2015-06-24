//Calculations on diesel cycle
clc,clear
//Given:
d=15,l=20 //Diameter and stroke of cylinder in cm
p1=10 //Percentage of stroke volume equal to clearance volume
p2=6 //Percentage of stroke at which cut off takes place
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.28
V_s=(%pi/4)*d^2*l //Stroke volume in cm^3
V_c=p1*V_s/100 //Clearance volume in cm^3
V1=V_s+V_c //Total volume at 1 in cm^3
V2=V_c //Volume at 2 in cm^3
V3=V2+p2*V_s/100 //Volume at 3 in cm^3
r=V1/V2 //Compression ratio
rho=V3/V2 //Cut off ratio
eta=1-((rho^g-1)/(r^(g-1)*g*(rho-1))) //Thermal efficiency
//Results:
printf("\n The air standard efficiency of the engine, eta = %d percent\n\n",eta*100)
