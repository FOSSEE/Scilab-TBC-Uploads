//Calculations on Otto cycle
clc,clear
//Given:
p=15 //Clearance volume in percentage of displacement volume
V_s=2.8 //Swept volume in litres
N=2500 //Engine speed in rpm
Q1=1400 //Heat added in kJ/kg
T1=27+273 //Temperature at inlet in K
P1=100 //Pressure at inlet in kPa
R=0.287 //Specific gas constant in kJ/kgK
//Solution:
//Refer fig 3.23
//By using gas tables
//Refer Ideal-gas properties of air
V2=(p/100)*(V_s/1000) //Volume at 2 (Clearance volume) in m^3
V3=V2 //Volume at 3 in m^3
V1=V_s/1000+V2,V4=V1 //Volume at 1, 4 in m^3
//  Process 1-2
vr1=621.2,pr1=1.3860,u1=214.09,phi1=5.7016 //Relative specific volume, relative pressure, specific internal energy(kJ/kg), specific entropy(kJ/kgK) at 1 (from air tables)
vr2=vr1*(V2/V1) //Relative specific volume at 2
vr=[81.89 78.61],T=[660 670],pr=[23.13 24.46],u=[481.01 488.81] //Relative specific volume, temperature(K), relative pressure, specific internal energy(kJ/kg) (extracted from air tables)
//Finding the corresponding temperature at vr2 by interpolation
T2=interpln([vr;T],vr2) //Temperature at 2 in K
//Finding the corresponding relative pressure at T2 by interpolation
pr2=interpln([T;pr],T2) //Relative pressure at 2
//Finding the corresponding specific internal energy at T2 by interpolation
u2=interpln([T;u],T2) //specific internal energy at 2 in kJ/kg
P2=P1*(pr2/pr1) //Pressure at 2 in kPa
//  Process 2-3
u3=Q1+u2 //Specific internal energy at 3 in kJ/kg
vr=[2.356 2.175 2.012],T=[2100 2150 2200],pr=[2559 2837 3138],u=[1775.3 1823.8 1872.8] //Relative specific volume, temperature(K), relative pressure, specific internal energy(kJ/kg) (extracted from air tables)
//Finding the corresponding relative specific volume at u3 by interpolation
vr3=interpln([u;vr],u3) //Relative specific volume at 3
//Finding the corresponding relative pressure at u3 by interpolation
pr3=interpln([u;pr],u3) //Relative pressure at 3
//Finding the corresponding temperature at u3 by interpolation
T3=interpln([u;T],u3) //Temperature at 3(maximum) in K (Round off error)
P3=P2*(T3/T2) //Pressure at 3(maximum) in kPa
//  Process 3-4
vr4=vr3*(V4/V3) //Relative specific volume at 4
vr=[15.241 14.470],T=[1180 1200],pr=[222.2 238.0],u=[915.57 933.33],phi=[7.1586 7.1684] //Relative specific volume, temperature(K), relative pressure, specific internal energy(kJ/kg), specific entropy(kJ/kgK) (extracted from air tables)
//Finding the corresponding temperature at vr4 by interpolation
T4=interpln([vr;T],vr4) //Temperature at 4 in K
//Finding the corresponding specific internal energy at T4 by interpolation
u4=interpln([T;u],T4) //Specific internal energy at 4 in kJ/kg
//Finding the corresponding relative pressure at T4 by interpolation
pr4=interpln([T;pr],T4) //Relative pressure at 4
P4=P3*(pr4/pr3) //Pressure at 4 in kPa
//Finding the corresponding specific entropy at T4 by interpolation
phi4=interpln([T;phi],T4) //Specific entropy at 4 in kJ/kgK
//  Process 4-1
Q2=u1-u4 //Heat rejected in kJ/kg
W=Q1+Q2 //Work done in kJ/kg
eta=W/Q1 //Efficiency
m=P1*V1/(R*T1) //Mass of air in cycle in kg
W=m*W*N/60 //Rate of work in kW
Delta_s=phi1-phi4-R*log(P1/P4) //Change in specific entropy between 1 and 4 in kJ/kgK
AE=Q2-T1*(Delta_s) //Available portion of energy of Q2 in kJ/kg (Round off error)
p_AE=AE/Q2 //Available energy in percentage of Q2
//  Without using gas tables
g=1.4 //Specific heat ratio(gamma)
cv=0.718 //Specific heat at constant volume in kJ/kgK
r=V1/V2 //Compression ratio
eta!=1-1/r^(g-1) //Efficiency
//  Process 1-2
T2=T1*(r)^(g-1) //Temperature at 2 in K
P2=P1/100*(r)^g //Pressure at 2 in bar
//  Process 2-3
T3!=Q1/cv+T2 //Temperature at 3(maximum) in K
P3!=P2*T3!/T2 //Pressure at 3(maximum) in bar
//  Process 3-4
T4=T3!*(1/r)^(g-1) //Temperature at 4 in K
Q2=cv*(T1-T4) //Heat rejected in kJ/kg
W!=Q1+Q2 //Work done in kJ/kg
eta!=W!/Q1 //Efficiency
power=m*W!*N/60 //Power in kW
Delta_s=cv*log(T1/T4) //Change in specific entropy between 1 and 4 in kJ/kgK
AE!=Q2-T1*Delta_s //Available portion of energy of Q2 in kJ/kg (Round off error)
p_AE!=AE!/Q2 //Available energy in percentage of Q2 (Round off error)
//Results:
printf("\n Constant specific heat:\n\t Maximum temperature, Tmax = %.1f K\n\t Maximum pressure, Pmax = %.1f bar\n\t Thermal efficiency, eta = %.2f percent\n\t Power = %.1f kW\n\t Available portion of heat rejected = %.1f kJ/kg (%.1f percent)",T3!,P3!,eta!*100,power,abs(AE!),p_AE!*100)
printf("\n Variable specific heat:\n\t Maximum temperature, Tmax = %.0f K\n\t Maximum pressure, Pmax = %.1f bar\n\t Thermal efficiency, eta = %.1f percent\n\t Power = %.1f kW\n\t Available portion of heat rejected = %.1f kJ/kg (%.1f percent)",T3,P3/100,eta*100,W,abs(AE),p_AE*100)
//Round off error in 'T3', 'AE', 'AE!', 'p_AE!'
