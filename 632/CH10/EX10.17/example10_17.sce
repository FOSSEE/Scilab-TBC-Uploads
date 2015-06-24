//clc()
m = 50;//kg ( basis - mass of brine charged )
//let x be the amount of NaCl in the brine
Pelect = 50;//% ( electrolyzed )
//2NaCl + 2H2O = 2NaOH + Cl2 + H2
//amount of NaCl reacted =x*Pelect/(100*58.45)kmol=x*Pelect/100kg   ( 1 )
//amount of water reacted = x * Pelect * 18.016 / ( 100 * 58.45 )kg ( 2 )
//Gases produced, Cl2 = x * Pelect / (100 * 58.45 * 2 )kmol = x * Pelect *71/ (100 * 58.45 * 2 )kg                                           ( 3 )
//H2 = x * Pelect / (100 * 58.45 * 2 )kmol = x * Pelect *2.016/ (100 * 58.45 * 2 )kg                                                         ( 4 )
Nwater = 0.03;//mol water vapour/mol of gas
//water vapour present = Nwater * 2*(Cl2 + H2)kmol = Nwater * 2*(Cl2 + H2)*18.016 kg                                                         ( 5 )
//NaoH = x * Pelect * 40.008/ (100 * 58.45 )kg                      ( 6 )
//water = water in brine - water reacted - water present in gas     ( 7 )
//= (m - Pelect/100) - water reacted ( 2 ) - water present in the gas( 5 )
//Total weight of solution = NaCl ( 1 ) + NaOH ( 6 ) + Water ( 7 )
//since NaOH is 10 percent of the total weight, we have NaOH = 0.1 * total weight, from these we get, 
x = 0.1 * 50 / (0.1* 0.3165 + 0.3422 );
NaOH = x * Pelect * 40.008/ (100 * 58.45 );
NaCl = x * Pelect / 100;
water = 34.5032;//kg
Pevap = 50;//NaOh percentage in solution leaving evaporator
//taking NaOH balance
mevap = NaOH * 100 / Pevap;
disp("kg",mevap,"(a)amount of 50% NaOH solution produced = ")
Cl2 = x * Pelect *71/ (100 * 58.45 * 2 );//kg
H2 = x * Pelect *2.016/ (100 * 58.45 * 2 );//kg
disp("kg",Cl2,"(b)Chlorine produced = ")
disp("kg",H2,"   Hydrogen produced = ")
Pleav = 1.5;//% NaCl leaving the evaporator
NaClleav = mevap * Pleav / 100;
mcrystal = NaCl - NaClleav;
disp("kg/h",mcrystal,"(c)Amount of NaCl crystallized = ")
mwaterleav = mevap - NaOH - NaClleav;
Mwaterevap = water - mwaterleav;
disp("kg",Mwaterevap,"(d)Weight of water evaporated = ")