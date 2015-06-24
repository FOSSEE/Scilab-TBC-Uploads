//clc()
mwater = 100;//kg
mNaCl = 35.8;//kg
msolu = mwater + mNaCl;
mfr = mNaCl / msolu;
mpr = mfr * 100;
MNaCl = 58.45;//kg/kmol
NNaCl = mNaCl / MNaCl;
MH2O = 18;//kg/kmol
NH2O = mwater / MH2O;
Mfr = NNaCl / (NNaCl + NH2O);
Mpr = Mfr * 100;
N = NNaCl *1000 / mwater;
disp(mfr,"(a)mass fraction of NaCl =")
disp(mpr,"mass percent of NaCl= ")
disp(Mfr,"(b)mole fraction of NaCl =")
disp(Mpr,"mole percent of NaCl = ")
disp(N,"kmol NaCl per 1000 kg of water =")