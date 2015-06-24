//clc()
F = 5000;//kg/h
P1 = 50;//% (H2O4 in)
MH2SO4 = 98.016;
P1gas = 65;//(nitrogen in gas entering)
P2gas = 35;// ( SO3)
MN2 = 28;
MSO3 = 80;
Mavg = ( MN2 * P1gas + MSO3 * P2gas)/100;//avg molecular wt. of entering gas
G = 4500;//kg/h
Ng = G / Mavg;
NN2 = Ng * P1gas / 100;
NSO3 = Ng - NN2;
P2 = 75;//% (H2O4 out)
//W be the mass of 75% H2SO4, x and y be the moles of SO3 and water vapour leaving resp.,
Pwater = 25;//kPa
Ptotal = 101.3;//kPa
//Pwater / Ptotal = y / ( NN2 + x + y )
//we get, y = 0.32765 * x + 2.744           (1)
//Total balance Feed + G = W + (NN2 * 28 + x * 80 + y * 18.016)
//we get, W + 80*x + 18.016*y = 7727.32     (2)
//from 1 and 2, 84.9174*x + W = 7352.68     (3)
//SO3 balance, So3 eneterin with 50% H2SO4 + SO3 in feed gas = SO leaving with 75%H2SO4 + SO3 leaving in exit gas
//5000*0.5*80/98.016 + 34.09*80 = 80* x + 0.75*W * 80/98.016   (4)
// from 3 and 4,
x = 9.74;
Nabsorbed = NSO3 - x;
Pabsorbed = Nabsorbed * 100 / NSO3;
disp("%",Pabsorbed,"Percentage of SO3 absorbed = ")
