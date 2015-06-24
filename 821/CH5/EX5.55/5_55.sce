Hb=2.4;//rise of the benzene solution in mm//
Db=0.88;//Density of Benzene solution in g per cm^3//
Dm=13.6;//Density of mercury solution in g per cm^3//
Hm=(Hb*Db)/Dm;//Rise of mercury solution in mm//
printf('The Osmatic pressure given in terms of the height of a liquid column must be converted into an equivalent height of a mercury column.');
printf('\nEquivalent Height of the mercury column=Hm=%fmm',Hm);
printf('\nThe density of solution is equal to density of solvent since the solution is dilute.\nLet M2 be the molecular weight of polymer.');
R=0.0821;//Universal gas constant//
T=310;//temperature in kelvin//
M2=(2.5*R*T*760)/Hm;//Molecular weight of polymer in grams//
printf('\nMolecular weight of polymer=M2=%f=3.11*10^5grams',M2);
