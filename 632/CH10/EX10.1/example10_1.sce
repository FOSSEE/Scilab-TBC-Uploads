//clc()
mair = 500;//kg
mCO2 = 55;//kg
mCO = 15;//kg
//C3H8 + 5O2 = 3CO2 + 4H20
MCO2 = 44;
MCO = 28;
NCO2 = mCO2 / MCO2;
NCO = mCO / MCO;
Mair = 29;
Nair = mair / Mair;
//carbon balance gives,
F = (NCO2 + NCO)/3;
MC3H8 = 44.064;
mC3H8 = MC3H8 * F ;
disp("kg",mC3H8,"(a)mass of propane burnt = ")
//one mole of propane requres 5 moles of oxygen for combustion
NO2 = F * 5;
Nairt = NO2 * 100 /21;//theoretical air required
Pexcess = (Nair - Nairt) * 100 / Nairt;
disp("%",Pexcess,"(b)The percent excess air = ")
//C3H8 + 7/2 * O2 = 3CO + 4H2O
NH2O = F * 4;
//Taking oxygen balance, unburned oxygen is calculated,
//O2 supplied = O2 present in form of CO2, CO and H2O + unburned O2
Nunburnt = Nair * 21 / 100 - NCO2 - NCO/2 - NH2O/2;
NN2 = Nair * 79 / 100;
Ntotal = NCO2 + NCO + NH2O + NN2 + Nunburnt;
PCO2 = NCO2 * 100 / Ntotal;
PCO = NCO *100/ Ntotal;
PH2O = NH2O *100/ Ntotal;
PN2 = NN2 *100/ Ntotal;
PO2 = Nunburnt *100 / Ntotal;
disp("%",PCO2,"(c)Percent composition of CO2 = ")
disp("%",PCO,"Percent composition of CO = ")
disp("%",PH2O,"Percent composition of H2O = ")
disp("%",PN2,"Percent composition of N2 = ")
disp("%",PO2,"Percent composition of O2 = ")