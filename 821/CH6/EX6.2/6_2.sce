v=180;//volume of conc. H2SO4 in ml//
n=6.61;//Normality of the solution//
N=1000*n/v;
printf('The Noramality or Strength of the Conc. acid=N=%fN',N);
printf('\n1 eq.per litre=0.5mol per litre in the case of H2SO4 since the eq.wt=0.5 the mol.wt.');
printf('\n 6.6N soln=6.61 eq per litre=3.305mol per litre.\n Strength of the diluted solution=3.305M');
SG=1.84;//super gravity of Conc. H2SO4//
w=SG*v;//weight of 180ml of conc. H2SO4 in grams//
printf('\nWt of 180ml of conc.H2SO4=w=%fgrams.',w);
printf('\nThis actually contains 6.61*49grams of H2SO4.\n percentage of H2SO4 by weight=97.8');
sg=1.198;//specific gravity of the diluted solution//
V=1000;//volume of the diluted solution in ml//
W=sg*V;//weight of one litre of the diluted solution in grams//
printf('\nWt of 1 litre of the diluted solution=W=%fgrams ',W);
WH2O=w+W;//weight of water in grams//
printf('\ntherefore Weight of water=WH2O=%fgrams.',WH2O);
printf('\nIf the percent of H2SO4 by wt in the diluted solution is y.\nWt of H2SO4 in 1litre of the diluted solution=49*6.61grams.so y value comes as 27.04percent');
M=3.305*1000/WH2O;//molality of the solution//
printf('\nMolality of the solution=M=%f',M);
mf=0.064;//mole fraction of H2SO4//
mfH2O=1-mf;//mole fraction of water//
printf('\nMol of sulphuric acid is 329.9/98=3.305.\nMol of water=874.1/18=48.561.\nMol fraction of H2SO4=0.064.');
printf('\nMole fraction of water=mfH2O=%f',mfH2O);
