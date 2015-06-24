//clc()
Nwater = 0.8;//moles
Nethanol = 0.2;//moles
T = 323;//K
Cwater = 4.18*10^3;//J/kgK
Cethanol = 2.58*10^3;//J/kgK
Hmixing1 = -758;//J/mol ( at 298K )
Hmixing2 = -415;//J/mol ( at 323K )
T1 = 298;//K
T2 = 523;//K
//step1 - 0.8 mol of water is cooled from 323 K to 298K
H1 = Nwater * 18 * Cwater * ( T1 - T )/ 1000;
//step2 - 0.2 mol ethanol cooled from 323K to 298K
H2 = Nethanol * 46 * Cethanol * ( T1 - T )/1000;
//step3 - 0.8 mol water and 0.2 mol ethanol are mixed together,
H3 = Hmixing1;
//step4 solution is heated to 323K, H4 = Cpm * (T - T1)
//Hmixing2 = H1 + H2 + H3 + H4
H4 = Hmixing2 - H1 - H2 - H3;
Cpm = H4 / ( T - T1 );
disp("J/molK",Cpm,"The mean heat capacity of a 20 percent solution = ")