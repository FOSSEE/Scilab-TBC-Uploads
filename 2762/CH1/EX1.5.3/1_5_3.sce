//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.5-3
//Introduction to engineering principles and units
//given data
//Let A be the moles of air and f be the moles of flue gas
//Basis 100 kgmol of flue gas
//Reacttions: CO+0.5O2 -> CO2 ; H2 + 0.5O2 -> H2O
//moles of O2 = 0.5*27.2(CO)+5.6(CO2)+(0.5)O2
O=0.5*27.2+5.6+0.5;
//for all H2 to be completely burnt we need: (3.1/2) moles of O2.Also for completely burning CO we need (27.2*0.5)
//0.5 moles of O2 used up in fuel gas
//calculating amount of O2 reqd theoretically
Otheo=(3.1/2)+(27.2/2)-0.5;
//for 20% excess we add:
Oact=1.2*Otheo;
//the amt of N2 added:
N=(79/21)*Oact;
//amt of unburnt CO (98% combustion)
COun=0.02*27.2;
//total carbon balance:
C=27.2+5.6;
//free CO2
CO2=C-COun;
//calculating inlet and outlet moles of o2
Oin=Oact+O;
//Oout=(3.1/2 in H2O)+(COun/2)(in CO)+CO2+ free O2(Ofree)
Ofree=Oin-(3.1/2)-(COun/2)-CO2;
//Nitrogen Balance in outlet(Nt): N in air + N in flue gas
Nt=N+63.6;
mprintf(" moles of H20=3.10 mol")
mprintf(" moles of N2 %f mol",Nt)
mprintf(" moles of CO %f mol",COun)
mprintf(" moles of N2 %f mol",Nt)
mprintf(" moles of CO2 %f mol",CO2)
mprintf(" moles of free O2 %f mol",Ofree)
