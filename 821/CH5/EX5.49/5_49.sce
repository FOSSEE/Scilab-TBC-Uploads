MH2O=18;//Molecular weight of H2O in grams//
WH2O=100;//weight of H2O in grams//
W=3.6;//weight of oraganic substance in grams//
dP=0.0855;//Lowering in vapour pressure in mm of Hg//
P=23.76;//Vapour pressure of Organic substance in mm of Hg//
M=(W*MH2O*P)/(WH2O*dP);//Molecular weight of Organic substance in grams//
printf('Molecular weight of Organic substance=M=%fgrams',M);
