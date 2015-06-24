a=0.21;//dissociation constant//
P=1;//pressure in atm//
Kp=(a^2*P)/(1-a^2);
printf('\nKp for the reaction=Kp=%f',Kp);
printf('\nP=1atm=0.4+PCOCl2+PCO+PCl2\nsum of pressure reactants=0.6atm\nCOCl2=CO+Cl2\nHere P is the total pressure due to all the participants of the reaction and is equal to 0.6atm.');
P1=0.6;
a1=sqrt(Kp/(P1+Kp));
printf('\na1=%f',a1);
printf('\nfor Pressure of 0.6atm a has increased,thereby indicating that the forward reaction is favoured.');//here the value of a1 is slightly different from textbook//
