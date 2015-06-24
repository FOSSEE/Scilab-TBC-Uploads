printf('A solution of NH3 is alkaline due to the following hydrolysis\nNH3+H2O = NH4+ + OH-');
printf('\nKb=(NH4+)*(OH-)/(NH3)=(c*a^2)/(1-a). ');
EC=3.7;//equivalent conductance of NH3 in water in ohm^-1cm^2//
EC0NH4Cl=149.9;//equivalent conductance of NH4Cl in ohm^-1cm^2//
EC0BaCl2=139.9;//equivalent conductance of 1/2BaCl2 in ohm^-1cm^2//
EC0BaOH2=262.2;//equivalent conductance of 1/2Ba(OH)2 in ohm^-1cm^2//
EC0=EC0NH4Cl-EC0BaCl2+EC0BaOH2;//effective Equivalent conductance in ohm^-1cm^2//
printf('\nEC0=%fohm^-1cm^2',EC0);
a=EC/EC0;//dissociation constant of the solution//
printf('\nDissociation constant of the solution=a=%f',a);
C=0.1;//normality of the solution//
Kb=(C*a^2)/(1-a);
printf('\nIonization constant=Kb=%f',Kb);//here the values of a and Kb are slightly different from textbook but that is ok//
