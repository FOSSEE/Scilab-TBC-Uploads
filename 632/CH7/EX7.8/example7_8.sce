//clc()
MW = 44.032;
Mwater = 18.016;
x = 2;//%
Pa = 41.4;//kPa
Mfr = (x/MW)/(x/MW + (100-x)/Mwater);
//henry's law gives Pa = Ha * xa
Ha = Pa / Mfr;
Molality = 0.1;
Mfr1 = Molality / (1000/Mwater + Molality);
Pa1 = Ha * Mfr1;
disp("kPa",Pa1,"Partial Pressure = ")