//clc()
//N2 + 3H2 = 2NH3
V1 = 100;//m^3 ( 1 = N2)
V2 = V1 * 3;// ( According to Avagadros principle, equal volumes of all gases under similar condition contains same no. of moles)
disp("m^3",V2,"(a)Volume of hydrogen required at same condition = ")
P1 = 20;//bar
T1 = 350;//K
P2 = 5;//bar
T2 = 290;//K
V3 = 3 * V1 * P1 * T2 / ( P2 * T1);
disp("m^3",V3,"(b)Volume required at 50 bar and 290K = ")
m = 1000;//kg ( ammonia )
N = m / 17.03;//kmol
N1 = N/2;// ( nitrogen)
N2 = N * 3 / 2;//(hydrogen)
P3 = 50;//bar
T3 = 600;//K
Pstp = 1.01325;//bar
Tstp = 273.15;//K
Vstp = 22.414;//m^3/kmol
V1stp = N1 * Vstp;
V4 = V1stp * Pstp * T3 / (P3 * Tstp);// ( nitrogen at 50 bar and 600K)
V5 = V4 * 2 ;// ( ammonia at 50 bar and 600K)
V6 = V4 * 3 ;// ( hydrogen at 50 bar and 600K)
disp("m^3",V4,"(c)Volume of nitrogen at 50 bar and 600K")
disp("m^3",V6,"   Volume of hydrogen at 50 bar and 600K")
disp("m^3",V5,"   Volume of ammonia at 50 bar and 600K")