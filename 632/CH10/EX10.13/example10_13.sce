//clc()
mTSPd = 1000;//kg ( basis - 20% dilute TSP )
P = 20;//%
mTSP = mTSPd * P / 100;
NTSP = mTSP / 163.974;
msodaashd = NTSP * 106;
mphacidd = NTSP * 97.998;
mNaOHd = NTSP * 40.008;
Pphacid = 85;//% (85% solution phosphoric acid)
PNaOH = 50;//% (50% solution NaOH)
//let x be the water in soda ash,
//taking water balance,
x = (mTSPd - mTSP) - mNaOHd * PNaOH /(100 - PNaOH) - mphacidd * (100 - Pphacid) / Pphacid;
msodaash = msodaashd + x;
C = msodaashd *100 / msodaash;
disp("%",C,"(a)Concentration of soda ash solution = ")
mphacid = mphacidd * 100 / Pphacid;
R = msodaash / mphacid;
disp(R,"(b)Weight ratio in which soda ash and commercial phosphoric acid are mixed = ")