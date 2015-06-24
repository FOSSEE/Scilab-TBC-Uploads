//Section-14,Example-5,Page no.-PC.82
//To calculate the solubility ofMg(OH)_2 in Purewater,0.01M NaOH, 0.01M Ba(OH)_2
clc;
//Mg(OH)_2=Mg_2+  +  2(OH)-
K_sp=(1.2)*10^-11
S=(K_sp/4)^(1/3)
disp(S,'Solubility of Mg(OH)_2 in purewater(mol/dm^3)')
S_bar=(K_sp/10^-4)
disp(S_bar,'Solubility of Mg(OH)_2 in 0.01M NaOH(mol/dm^3)')
S_dbar=(K_sp/(4*10^-4))
disp(S_dbar,'Solubility of Mg(OH)_2 in 0.01M Ba(OH)_2)(mol/dm^3)')

