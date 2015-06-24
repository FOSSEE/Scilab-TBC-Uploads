//clc()
Cp = 29.3;//kJ/kmol
R = 8.314;
Cv = Cp - R;
T1 = 300;//K
P1 = 1;//bar
P2 = 2;//bar
//step1 - Volume remains constant, therefore the work done is zero and heat supplied is Cv, Also T2/T1 = P2/P1
T2 = P2 * T1 / P1;
Q1 = Cv * ( T2 - T1 );
W1 = 0;
disp("kJ",W1,"Work done at constant volume = ")
disp("kJ",Q1,"Heat supplied at constant volume = ")
//step2 - Process is abdiabatic
Q2 = 0;
r = 1.4;
T3 = T2 * (( P1 / P2 )^((r - 1)/r));
W2 = Cv * ( T2 - T3 ); 
disp(T3)
disp("kJ",W2,"Work done in adiabatic process = ")
disp("kJ",Q2,"Heat supplied in adiabatic process = ")
//step3 - process is isobaric
Q3 = Cp * (T1 - T3);
U3 = Cv * (T1 - T3);
W3 = Q3 - U3;
disp("kJ",W3,"Work done at constant pressure = ")
disp("kJ",Q3,"Heat supplied at constant pressure = ")