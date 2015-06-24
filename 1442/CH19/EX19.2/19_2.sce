clc
//initialisation of variables
m1= 24 //kg
M1= 32 //kg
m2= 28 //kg
M2= 28 //kg
e= 0.5
T3= 1800 //C
T0= 25 //C
T1= 25 //C
T2= 100 //C
R= 8.314 //Jmol K
cp= 4.57 //J/mol K
cp1= 3.5 //J/mol K
cp2= 3.5 //J/mol K
hCO2= -393522 //J
hCO= -110529 //J
//CALCULATIONS
n1= m1/M1
n2= m2/M2
N= n1-0.5*e
N1= n2-e
N2= e
N3= N+N1+N2
y1= N/N3
Q= ((N*cp+N1*cp1+N2*cp2)*R*(T3-T0)-(n1*cp*(T1-T0)+n2*cp2*(T2-T1))+N*(hCO2-hCO))/60
//RESULTS
printf (' Heat interaction= %.f kW ',Q)
