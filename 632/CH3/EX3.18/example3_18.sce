//clc()
msolu = 100;//kg
percent1 = 60;//%
Dwater = 998;//kg/m^3
Dalco = 798;//kg/m^3
Dsolu = 895;//kg/m^3
Vsolu = msolu/Dsolu;
malco = msolu * percent1 / 100;
Valco = malco / Dalco;
Vpr = Valco * 100 / Vsolu;
Malco = 46.048;//kg/kmol
N = malco/Malco;
Molarity = N/(Vsolu );
mwater = msolu - malco;
Molality = N * 1000 /mwater;
disp("%",Vpr,"(a)Volume percent of ethanol in solution = ")
disp("mol/L",Molarity,"(b)Molarity = ")
disp("mol/(kg of water)",Molality,"(c)Molality = ")