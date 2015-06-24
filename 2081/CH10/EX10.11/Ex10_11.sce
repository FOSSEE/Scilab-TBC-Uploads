P4dBW=-34
PdBm4=P4dBW-30
PW4=10^((PdBm4/10))
disp(PW4,'minimum power level of class IV phone in mW')

ERP1dBW=6
PdBm1=ERP1dBW-30
PW1=10^((PdBm1/10))

disp(PW1,'ERP of class I phone in mW')
R=PW1/PW4
RdB=10*log10(R)

mprintf('minimum power level for a class I phone is greater than\n minimum power level of class IV phone by factor of %idB or %f',RdB,R)

