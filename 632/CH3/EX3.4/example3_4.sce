//clc()
MFe = 55.85;
MO = 16;
MS = 32;
MFeS2 = MFe + MS * 2;
MFe2O3 = MFe * 2 + MO * 3;
MSO3 = MS + MO * 3;
m1SO3 = 100;//kg
N1 = m1SO3 / (MSO3);//kmol
NFeS2 = N1 / 2;
mFeS2 = NFeS2 * MFeS2;
disp("kg",mFeS2,"mass of pyrites to obtain 100kg of SO3 =")
m2SO3 = 50;//kg
N2 = m2SO3 / (MSO3);//kmol
NO2 = N2 * 15/8;
mO2 = NO2 * MO * 2;
disp("kg",mO2,"mass of Oxygen consumed to produce 50kg of SO3 =")