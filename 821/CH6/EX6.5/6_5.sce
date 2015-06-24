printf('Upon solving the equations PA=0.9atm,PB=0.3atm');
PA=0.9;//vapour pressure of A//
PB=0.3;//Vapour pressure of B//
xA=0.33;
xB=0.66;
yA=(xA*PA)/(xA*PA+xB*PB);
printf('\nComposition of Vapour A in the mixture=yA=%f',yA);
yB=1-yA;
printf('\nComposition of Vapour B in the mixture=yB=%f',yB);
VP=yA*PA+yB*PB;//total vapour pressure of the mixture//
printf('\nTotal vapour pressure of the mixture=VP=%f',VP);
