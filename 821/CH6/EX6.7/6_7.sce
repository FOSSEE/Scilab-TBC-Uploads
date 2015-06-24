wA=162;
wB=100;
VPB=641;//vapour pressure of water//
VPA=119;//vapour pressure of oraganic substance//
MB=18;//Molecular weight of H2O//
printf('Even though the boiling part of A might be higher,it distills out at a low temperature 95.3degrees.');
printf('\nIf A were to distill at 95.3degrees,the distillation will have to be carried out at a reduced pressure of about 119mm of mercury');
MA=(wA*MB*VPB)/(wB*VPA);
printf('\nMolecular weight of A=MA=%fgrams',MA);
