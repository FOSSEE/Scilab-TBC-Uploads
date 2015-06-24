clear
clc
DelVm_tr=0.0126;//in cm^3/gm
P=1;//in atm
Ti=368.65;//in K
DelTDelP=0.035;//in K/atm
R1=8.314;//in J
R2=0.082;//in dm^3atm
DelHm_tr=Ti*(DelVm_tr*32/1000)*1/(DelTDelP)*(R1/R2)
printf('DelHm_tr=%.1f J/mol',DelHm_tr)
