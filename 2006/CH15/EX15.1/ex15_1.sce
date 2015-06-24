clc;
// (b).Number of moles of each constituents
nCH4=2; // Number of moles of CH4
E=3-nCH4; // Amount of reaction from (a) and refer example 15.1 (a)
nH2O=1-E;// Number of moles of H2O
nCO=1+E;// Number of moles of CO
nH2=4+3*E;// Number of moles of H2
disp (nH2,"Number of moles of H2 = ",nCO,"Number of moles of CO = ",nH2O,"Number of moles of H2O = ","(b).Number of moles of each constituents");
