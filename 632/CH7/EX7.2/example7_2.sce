//clc()
P1 = 100;//kPa ( Vapour pressure of liq A )
P2 = 60;//kPa ( Vapour pressure of liq B )
T = 320;//K
//Pa = xa * P1 = 100 * xa
//Pa = xb * P2 = 60 * xb
//P = xa * P1 + ( 1 - xa )* P2
// = 100xa + ( 1 - xa )* 60
// = 60 + 40*xa
//ya = Pa / P
//0.5 = 100*xa / ( 60 + 40 * xa)
xa = 60 * 0.5 / (100 - 20);
Per1 = xa * 100;
disp("%",Per1,"(a)Percentage of A in liquid = ")
Ptotal = 60 + 40 * xa;
disp("kPa",Ptotal,"(b)Total pressure of the vapour = ")