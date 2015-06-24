clc
//solution
// initialization of variables

r=18 // compression ratio
k=1.4 // polytropic index for air
R=0.287 // specific gas constant for air
T1=200+273 // lower temperaure in kelvin
P1=200 // low pressure in kPa
T3=2000 // higher temperature of cycle in kelvin 

v1=R*T1/P1 // specific volume at state 1 in m^3
//using table E.1
u1=340 // specific internal energy in kJ/kg
vr1=198.1 // in m^3/kg

vr2=vr1*(1/r) // as r=v1/v2

// now finding corresponding values from table E.1
T2=1310 // temperature in kelvin
Pr2=34 // pressure in kPa
h2=1408 // specific entropy in kJ/kg
v2=v1/18 // volume at state 2
P2=R*T2/v2 // pressure at state 2

h3=2252.1 // specific enthalpy in kJ/kg from table E.1
vr3=2.776 
P3=P2 // diesel cycle
v3=R*T3/P3 // after compression volume
v4=v1 // isochoric process
vr4=vr3*v4/v3 // isentropic process
// now using Vr4 we read corresponding value from table E.1
T4=915 // final temperature in kelvin
u4=687.5 // specific internal energy at state 4

qin=h3-h2 // using first law 
qout=u4-u1 // heat rejected 

Wnet=qin-qout // net work
effi=100*Wnet/qin // thermal efficiency
printf("The thermal efficiency is %0.2f %% \n",effi)

MEP=Wnet/(v1-v2) // expression of mean effective pressure in terms of work

printf(" The MEP is %0.2f kPa \n",MEP)

erroreffi=(66.6-effi)*100/effi // error in efficiency
errorMEP=(515-MEP)*100/MEP // error in MEP

printf(" The %% error in efficiency is %0.1f %% \n",erroreffi)
printf(" The %% error in MEP is %0.1f %% \n",errorMEP)

// the answers are slight different due to approximation in textbook ... here answers are precise
