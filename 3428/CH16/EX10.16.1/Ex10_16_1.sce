//Section-10,Example-1,Page no.-CT.1
//To find the enthalpy change for the reaction.
clc;
CC_dbe=145            //C=C bond energy(kCal)
CC_sbe=83              //C-C bond energy(kCal)
CH_sbe=99              //C-H bond energy(kCal)
HH_sbe=104             //H-H bond energy(kCal)
E_bb=CC_dbe+HH_sbe     //energy required for bond breakage(kCal)
E_bf=CC_sbe+(2*CH_sbe)  //energy required for bond formation(kCal)
E=E_bb-E_bf
disp(E,'Enthalpy change(kCal)')
//negative value indicates exothermic reaction.
