P=10;//pressure in atm//
printf('The total pressure P=PH2+PN2+PNH3.At all times PH2=3PN2\nSo PNH3=P-4*PN2 or PN2=0.25*(P-PNH3).');
printf('\nLet x represent the mole fraction of NH3 at equilibrium.\nThen 1-x represents the sum of the mole fraction of N2 and H2.');
x=0.0122;//yield of NH3 in moles//
PNH3=x*P;//pressure of NH3 in atm//
xNH3=x;
PN2=0.25*(1-x)*P;//pressure of N2 in atm//
PH2=0.75*(1-x)*P;//pressure of H2 in atm//
Kp=(PNH3^2)/(PN2*PH2^3);
printf('\nKp value for the reaction=Kp=%f=1.5*10^-5atm^-2',Kp);
