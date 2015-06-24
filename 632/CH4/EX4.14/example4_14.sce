//clc()
// CO2 = CO + 1/2 * O2
P1 = 1;//bar
T1 = 3500;//K
P2 = 1;//bar
T2 = 300;//K
V2 = 25;//L
V1 = V2 * P2 * T1 / ( P1 * T2 );
disp("L",V1,"(a)Final volume of gas if no dissociation occured = ")
Pstp = 1.01325;//bar
Tstp = 273;//K
Vstp = 22.4143;//m^3
N2 = V2 * P2 * Tstp / ( Vstp * Pstp * T2);
// let x be the fraction dissociated, then after dissociation,
// CO2 = (1 - x)mol, CO = xmol, O2 = (0.5*x)mol
//total moles = 1 - x + x + o.5 * x = 1 + 0.5 * x 
V = 350;//L
N1 = V * P1 * Tstp / (Vstp * Pstp * T1);
// 1 + 0.5 * x = N1, therefore
x = (N1 - 1) / 0.5 ;
p = x*100;
disp("%",p,"(b)CO2 converted = ")
