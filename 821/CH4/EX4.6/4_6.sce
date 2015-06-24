mA=0.11;//amount of gas A in grams//
MWA=44;//Molecular weight of gas A in grams//
nA=mA/MWA;//No. of moles of gas A//
printf('No. of moles of gas A=nA=%fmol',nA);
mB=0.17;//amount of gas B in grams//
MWB=34;//Molecular weight of gas B in grams//
nB=mB/MWB;//No. of moles of gas B//
printf('\nNo. of moles of gas B=nB=%fmol',nB);
MFA=nA/(nA+nB);//mole fraction of gas A//
printf('\nmole fraction of gas A=MFA=%f',MFA);
MFB=nB/(nA+nB);//mole fraction of gas B//
printf('\nmole fraction of gas B=MFB=%f',MFB);
PPA=MFA*759;//Partial pressure of gas A//
printf('\nPartial pressure of gas A=PPA=%fmm of Hg',PPA);
PPB=MFB*759;//Partial pressure of gas B//
printf('\nPartial pressure of gas B=PPB=%fmm of Hg',PPB);
