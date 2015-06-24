clear
clc
//Concentration(mol/litre) of components in the mixed feed stream is
CAo=1.4;CBo=0.8;CRo=0;
//Volume(litre)
V=6;
//For 75% conversion of B
//From stoichiometry of equation A+2B-->R
CA=1.4-(0.75*0.8)/2;
CB=0.8-(0.75*0.8);
CR=(0.75*0.8)/2;
//From the Given rate equation(mol/litre.min)
rB=2*(12.5*CA*CB*CB-1.5*CR);
//Volumetric flow rate is given by
v=V*rB/(CBo-CB);
printf("\n volumetric flow rate(litre/min) into and out of the reactor is %f \n",v)
disp('The sol varies from book as the value of CB taken in book at end is wrong')

