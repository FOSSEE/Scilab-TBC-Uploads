//clc()
//Cp = 26.586 + 7.582 * 10 ^-3 * T - 1.12 * 10^-6 * T^2
T1 = 500;//K
T2 = 1000;//K
x = integrate('26.586 + 7.582 * 10^-3 * T - 1.12 * 10^-6 * T^2','T',T1,T2);
Cpm = 1 *x / ( T2 - T1 ) ;
disp("kJ/kmolK",Cpm,"(a)Mean molal heat capacity = ")
V = 500;//m^3;
N = V / 22.4143;
Q = N * Cpm * ( T2 - T1 );
disp("kJ/h",Q,"(b)Heat to be supplied = ")
T3 = 1500;//K
Q1 = Cpm * (T3 - T1);
y = integrate('26.586 + 7.582 * 10 ^-3 * T - 1.12 * 10^-6 * T^2','T',T1,T3);
Q2 = y ;
disp(Q2)
Perror = (Q2 - Q1) * 100 / Q2;
disp("%",Perror,"(c)Percent error = ")