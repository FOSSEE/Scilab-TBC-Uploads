//Effect of molecular contraction
clc,clear
//Given:
r=7 //Compression ratio
CV=44000 //Calorific value of the fuel in kJ/kg
A_F=13.67 //Air fuel ratio of the mixture
cv=0.718 //Specific heat at constant volume in kJ/kgK
n=1.3 //Polytropic index
P1=1,T1=67+273 //Pressure and temperature at the beginning in bar and K
//Solution:
//Refer fig 3.22
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
p=23 //Percentage of oxygen in air by mass
//Stoichiometric equation of combustion of fuel (C6H14)
//   [C6H14] + x[O2]   =   y[CO2] + z[H2O]
//Equating coefficients
x=9.5,y=6,z=7 //Coefficients of stoichiometric equation
A_F_g=x*2*O/(6*C+14*H)*100/p //Gravimetric air fuel ratio
MS=A_F_g/A_F*100 //Actual mixture strength in percent
//Combustion is incomplete
//Stoichiometric equation of incomplete combustion of fuel (C6H14)
//    MS/100[C6H14] + x[O2] = a[CO2] + b[CO] + c[H2O]
//Equating coefficients
a=4.39,b=2.36,c=7.87 //Coefficients of stoichiometric equation
//Stoichiometric equation of combustion of fuel (C6H14) by adding Nitrogen
//   MS/100[C6H14] + x[O2] + x*79/21[N2] = a[CO2] + b[CO] + c[H2O] + x*79/21[N2]
m1=MS/100+x+x*79/21 //Moles before combustion
m2=a+b+c+x*79/21 //Moles after combustion
Me=(m2-m1)/m1*100 //Molecular expansion in percent
T2=T1*r^(n-1) //Temperature at 2 in K
m_c=A_F+1 //Mass of charge in kg
T3=CV/(m_c*cv)+T2 //Temperature at 3 in K
T3=round(T3)
P3=P1*r*(T3/T1) //Pressure at 3 in bar (printing error)
//Temperature and pressure considering molecular expansion
T3!=T3 //Temperature remains same at 3 in K
P3!=P3*m2/m1 //Pressure at 3 in bar
//Results:
printf("\n\t The molecular expansion = %.2f percent\n",Me)
printf("\n (a)Without considering the molecular contraction\n\t The maximum pressure, P3 = %.2f bar\n\t The maximum temperature, T3 = %.0f K",P3,T3)
printf("\n (b)Considering the molecular contraction\n\t The maximum pressure, P3 = %.2f bar\n\t The maximum temperature, T3 = %.0f K",P3!,T3!)
//Answer in the book is wrong
