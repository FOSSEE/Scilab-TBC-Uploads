//Ex10.2.8.1;Find Reversible voltage for hydrogen oxygen fuel cell
del_G=-237.3*10^3;//Joules/gm-mole of H2
//Reversible voltafe E of a cell is given by =del_Wrev/nF=-del_G/nF
//since 2 electrons are transferred per molecule of H2.thus
n=2;
F=96500;//Faraday's constant
E=-del_G/(n*F);
printf("Reversible voltage=%f volts",E);
