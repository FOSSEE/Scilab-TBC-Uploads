// Exa 3.27
clc;
clear;
close;
// Given data
P1 = 1 * 10^5;// in N/m^2
V1 = 0.1;// in m^3
V2 = 0.01;// in m^3
T1 = 90;// in degree C
T1 = T1  +273;// in K
R = 0.287;// in kJ/kg-K
R = R  *10^3;
C_v = 0.717;// in kJ/kg-K
C_P = 1.005;// in kJ/kg-K
m = (P1 * V1)/(R*T1);// in kg
Gamma = 1.4;
T2 = T1 * ((V1/V2)^(Gamma - 1));// in K
del_U = m*C_v*(T1-T2);// in kJ
disp(del_U,"The change in internal energy in kJ is : ")
del_E = m * C_P*(T2-T1);// in kJ
disp(del_E,"The change in enthalpy in kJ is : ")
U2 = m*C_v*T2;//Internal energy at 2 in kJ
T= 473;// temp. of entering air
E = V1*C_P*T;//Enthalpy of entering air in kJ
// U3= (m+V1)*C_v*T3 ; (internal energy at 3)
// U3= U2+E
T3 = (E+U2)/( (m+V1)*C_v );// in K
disp(T3,"Temperature in K is");
m=m+.1;
P3 =m* R*T3/V2;// in N/m^2
disp(P3*10^-6,"The pressure in MN/m^2 is");

// Note: There is a calculation error to evaluating the value of P3. So the answer in the book of P3 is wrong.
