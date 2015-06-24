//clc()
//F = feed(wet solid), V1 = water evaporated(drier), V2 = water evaporated(oven), S1 = Dry solid(drier), S2 = Dry solid(oven)
F = 1000;//kg
xf = 0.8;
x1 = 0.15;
x2 = 0.02;
//moisture free solid balance for drier, F * ( 1 - xf) = S1 * ( 1 - x1 )
S1 = F * ( 1 - xf )/(1 - x1);
//total balance for drier , F = S1 + V1
V1 = F - S1;
//For oven, S1 * ( 1 - x1 ) = S2 * ( 1 -x2 )
S2 = S1 * ( 1 - x1 )/(1 - x2);
//Also, S1 = S2 + V2
V2 = S1 - S2;
disp("kg",S1,"(a)Weight of product leaving the drier = ")
disp("kg",S2,"   Weight of product leaving the oven = ")
P1 = V1 *100/ (F * xf);
P2 = V2 *100/ (F * xf);
disp("%",P1,"(b)Percentage of original water removed in drier = ")
disp("%",P2,"   Percentage of original water removed in oven = ")