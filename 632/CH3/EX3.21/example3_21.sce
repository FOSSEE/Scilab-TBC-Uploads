//clc()
msolu = 100;//g
MK2CO3 = 138.20;//g/mol
percent1 = 50;//%
mK2CO3 = percent1 *msolu / 100;
NK2CO3 = mK2CO3 / MK2CO3;
mwater = msolu - mK2CO3;
Nwater = mwater / 18.06;
Mpr = NK2CO3 * 100 / (NK2CO3 + Nwater);
sp.gr  =1.53;
Vsolu = msolu/sp.gr;//mL
Vwater = mwater / 1;//mL
Vpr = Vwater * 100/ Vsolu;
Molality = NK2CO3 / (mwater * 10^-3);
Molarity = NK2CO3 / (Vsolu * 10^-3);
Eq.wt = MK2CO3 / 2;
No = mK2CO3/Eq.wt;
N = No / (Vsolu * 10^-3);
disp("%",Mpr,"(a)Mole prcent of salt = ") 
disp("%",Vpr,"(b)Volume percent of water = ")
disp("mol/kg",Molality,"(c)Molality = ")
disp("mol/L",Molarity,"(d)Molarity = ")
disp("N",N,"(e)Normality")