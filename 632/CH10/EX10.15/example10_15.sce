//clc()
N = 100;//mol(basis - scrubber)
NNOs = 2.4;//mol
NN2s = 92;//mol
NO2s = 5.6;//mol
PNOs = 20;//% ( Percentage NO leaving scrubber)
NNOreac = NNOs * 100 / PNOs;
//let x mol of nitroge be produced in the reaction, then the amount of N2 present in the air = NN2s - x mol - (1)
//4NH3 + 5O2 = 4NO + 6H2O
//4NH3 + 3O2 = 2N2 + 6H2O
//4moles of NO - 5 moles of O2, 2moles of N2 - 3 moles of O2
//Total oxygen used up, O  =  NNOreac * 5/4 + x*3/2
//total oxygen supplied, NOtotal= (O) + NO2s
//Nitrogen associated with O2 supplied NN2 = NOtotal*79/21 - (2)
//comparing 1 and 2,
x = 2.1835;
//12moles NO requires 12moles ammonia, 1 mole N2 requires 2 mole ammonia
Nammonia = x*2 + NNOreac;
Oreq = Nammonia * 5 / 4;
Osupp = NNOreac * 5/4 + x*3/2 + NO2s;
Pexcess = (Osupp - Oreq)*100/Oreq ;
disp("%",Pexcess,"(a)Percentage excess oxygen = ")
fr = x * 2 / Nammonia;
disp(fr,"Fraction of ammonia taking part in side reaction = ")