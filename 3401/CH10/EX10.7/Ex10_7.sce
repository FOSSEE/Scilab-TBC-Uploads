clc

T=300// K
k=1.3806*10^-23// JK^-1
e=1.6*10^-19// eV
ni=1.5*10^10// cm^-3
NE=10^18// cm^-3
pE01=(ni*ni)/NE// neglecting bandgap
disp(pE01,"pE01 the value of pE01 in cm^-3 is")
NE=10^19// cm^-3
pE03=(ni*ni)/NE// neglecting bandgap
disp(pE03,"pE03 the value of pE03 in cm^-3 is")
pE02=((ni*ni)/NE)*exp(0.030/(k*(T/e)))// including bandgap
disp(pE02,"pE02 the value of pE02 in cm^-3 is")
pE04=((ni*ni)/NE)*exp(0.1/(k*(T/e)))// including bandgap
disp(pE04,"pE04 the value of pE04 in cm^-3 is")
